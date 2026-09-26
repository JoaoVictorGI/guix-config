(define-module (qobine)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages sqlite)
  #:use-module (gnu packages tls)
  #:use-module (guix build-system cargo)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define-public qobine
  (package
    (name "qobine")
    (version "2026-08-28")
    (source
     (origin
       (method git-fetch)
       (uri
        (git-reference
         (url "https://github.com/SofusA/qobine")
         (commit
          "11f299611ecdc92540eece776a4252034484dec4")))
       (file-name
        (git-file-name name version))
       (sha256
        (base32
         "0ckz955am5wg8ayzp2ys10s0513iz7argiprhxwmmbxf3cnrnl8b"))))

    (build-system cargo-build-system)

    (arguments
     (list
      #:install-source? #f

      ;; Only build/test the terminal application.
      #:cargo-build-flags
      ''("--release" "--package" "tui-module")

      #:cargo-test-flags
      ''("--package" "tui-module")

      ;; Qobine is a Cargo workspace; install this member.
      #:cargo-install-paths
      ''("tui-module")

      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'wrap-alsa-plugin-path
            (lambda _
              (wrap-program (string-append #$output "/bin/qobine-tui")
                `("ALSA_PLUGIN_DIR" =
                  (,(string-append #$pipewire "/lib/alsa-lib")))))))))

    (native-inputs
     (list pkg-config))

    (inputs
     (cons*
      alsa-lib
      openssl
      pipewire
      sqlite
      (cargo-inputs 'qobine #:module '(rust-crates))))

    (home-page "https://github.com/SofusA/qobine")
    (synopsis "Terminal Qobuz music player")
    (description
     "Qobine is a Qobuz music player.  This package installs its terminal
interface as @command{qobine-tui}.")

    ;; Set this after checking the repository's own license.
    (license #f)))
