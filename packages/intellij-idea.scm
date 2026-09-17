(define-module (intellij-idea)
  #:use-module ((nonguix licenses) #:prefix license:)
  #:use-module (gnu packages admin)
  #:use-module (gnu packages base)
  #:use-module (gnu packages bootstrap)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages cups)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages icu4c)
  #:use-module (gnu packages image)
  #:use-module (gnu packages instrumentation)
  #:use-module (gnu packages kerberos)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages llvm)
  #:use-module (gnu packages musl)
  #:use-module (gnu packages nss)
  #:use-module (gnu packages selinux)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages xorg)
  #:use-module (guix build-system copy)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix packages))

(define-public intellij-idea
  (package
    (name "intellij-idea")
    (version "2026.2.3")
    (source
     (origin
       (method url-fetch/tarbomb)
       (uri
        (string-append
         "https://download.jetbrains.com/idea/idea-"
         version
         ".tar.gz"))
       (sha256
        (base32
         "0dxbjvj9k6k4qirhrlc5vipipndybxwxz5yi3hjhg56lwj51qxb8"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:validate-runpath? #f
      #:modules
      '((guix build copy-build-system)
        (guix build utils)
        (ice-9 exceptions)
		(ice-9 ftw)
        (srfi srfi-1))
      #:install-plan
      #~`(("." "."))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'change-directory
            (lambda _
              (let ((directories
                     (filter
                      (lambda (entry)
                        (and (not (member entry '("." "..")))
                             (file-is-directory? entry)))
                      (scandir "."))))
                (unless (= (length directories) 1)
                  (error "expected one top-level IDEA directory"
                         directories))
                (chdir (car directories)))))

          (add-after 'install 'remove-async-profiler
            (lambda _
              (let ((directory
                     (string-append
                      #$output
                      "/lib/async-profiler")))
                (when (file-exists? directory)
                  (delete-file-recursively directory)))))

          (add-after 'remove-async-profiler 'patch-library-locations
            (lambda _
              (let* ((ld.so
                      (string-append
                       #$(this-package-input "glibc")
                       #$(glibc-dynamic-linker)))
                     (musl-ld.so
                      (string-append
                       #$(this-package-input "musl")
                       "/lib/ld-musl-x86_64.so.1"))
                     (rpath
                      (string-join
                       (list
                        (string-append
                         (ungexp (this-package-input "gcc") "lib")
                         "/lib")
                        (string-append #$(this-package-input "alsa-lib") "/lib")
                        (string-append #$(this-package-input "at-spi2-core") "/lib")
                        (string-append #$(this-package-input "audit") "/lib")
                        (string-append #$(this-package-input "cairo") "/lib")
                        (string-append #$(this-package-input "cups") "/lib")
                        (string-append #$(this-package-input "dbus") "/lib")
                        (string-append #$(this-package-input "e2fsprogs") "/lib")
                        (string-append #$(this-package-input "expat") "/lib")
                        (string-append #$(this-package-input "fontconfig-minimal") "/lib")
                        (string-append #$(this-package-input "freetype") "/lib")
                        (string-append #$(this-package-input "giflib") "/lib")
                        (string-append #$(this-package-input "glib") "/lib")
                        (string-append #$(this-package-input "glibc") "/lib")
                        (string-append #$(this-package-input "icu4c") "/lib")
                        (string-append #$(this-package-input "libdrm") "/lib")
                        (string-append #$(this-package-input "libsecret") "/lib")
                        (string-append #$(this-package-input "libselinux") "/lib")
                        (string-append #$(this-package-input "libx11") "/lib")
                        (string-append #$(this-package-input "libxau") "/lib")
                        (string-append #$(this-package-input "libxcb") "/lib")
                        (string-append #$(this-package-input "libxcomposite") "/lib")
                        (string-append #$(this-package-input "libxcursor") "/lib")
                        (string-append #$(this-package-input "libxdamage") "/lib")
                        (string-append #$(this-package-input "libxdmcp") "/lib")
                        (string-append #$(this-package-input "libxext") "/lib")
                        (string-append #$(this-package-input "libxfixes") "/lib")
                        (string-append #$(this-package-input "libxfont") "/lib")
                        (string-append #$(this-package-input "libxi") "/lib")
                        (string-append #$(this-package-input "libxkbcommon") "/lib")
                        (string-append #$(this-package-input "libxkbfile") "/lib")
                        (string-append #$(this-package-input "libxml2") "/lib")
                        (string-append #$(this-package-input "libxrandr") "/lib")
                        (string-append #$(this-package-input "libxrender") "/lib")
                        (string-append #$(this-package-input "libxshmfence") "/lib")
                        (string-append #$(this-package-input "libxtst") "/lib")
                        (string-append #$(this-package-input "libxxf86vm") "/lib")
                        (string-append #$(this-package-input "linux-pam") "/lib")
                        (string-append #$(this-package-input "lldb") "/lib")
                        (string-append #$(this-package-input "mesa") "/lib")
                        (string-append #$(this-package-input "mit-krb5") "/lib")
                        (string-append #$(this-package-input "musl") "/lib")
                        (string-append #$(this-package-input "nspr") "/lib")
                        (string-append #$(this-package-input "nss") "/lib/nss")
                        (string-append #$(this-package-input "openssl") "/lib")
                        (string-append #$(this-package-input "pango") "/lib")
                        (string-append #$(this-package-input "pixman") "/lib")
                        (string-append #$(this-package-input "xz") "/lib")
                        (string-append #$(this-package-input "zlib") "/lib")
                        (string-append #$output "/jbr/lib")
                        (string-append #$output "/jbr/lib/server"))
                       ":")))

                (define (patch-elf file)
                  (guard
                   (condition
                    ((invoke-error? condition)
                     (report-invoke-error condition)))
                   (unless (string-contains file ".so")
                     (invoke
                      "patchelf"
                      "--set-interpreter"
                      (if (string-contains
                           file
                           "/plugins/Kotlin/bin/linux/LLDBFrontend")
                          musl-ld.so
                          ld.so)
                      file))
                   (invoke
                    "patchelf"
                    "--set-rpath"
                    (string-append (dirname file) ":" rpath)
                    file)))

                (for-each
                 (lambda (file)
                   (when (elf-file? file)
                     (patch-elf file)))
                 (find-files #$output)))))

          (add-after 'patch-library-locations 'wrap-launcher
            (lambda _
              (wrap-program
               (string-append #$output "/bin/idea")
               `("PATH" prefix
                 (,(string-append
                    #$(this-package-input "dbus")
                    "/bin"))))))

          (add-after 'wrap-launcher 'install-desktop-file
            (lambda _
              (let ((directory
                     (string-append
                      #$output
                      "/share/applications")))
                (mkdir-p directory)
                (call-with-output-file
                    (string-append directory "/idea.desktop")
                  (lambda (port)
                    (format
                     port
                     "[Desktop Entry]~@
Name=IntelliJ IDEA~@
Comment=Java, Kotlin, Groovy and Scala IDE~@
Exec=~a/bin/idea %f~@
Icon=~a/bin/idea.svg~@
Terminal=false~@
Type=Application~@
Categories=Development;IDE;~@
StartupNotify=true~@
StartupWMClass=jetbrains-idea~@"
                     #$output
                     #$output)))))))))

    (inputs
     (list
      `(,gcc "lib")
      alsa-lib
      at-spi2-core
      audit
      cairo
      cups
      dbus
      e2fsprogs
      expat
      fontconfig
      freetype
      giflib
      glib
      glibc
      icu4c
      libdrm
      libsecret
      libselinux
      libx11
      libxau
      libxcb
      libxcomposite
      libxcursor
      libxdamage
      libxdmcp
      libxext
      libxfixes
      libxfont
      libxi
      libxkbcommon
      libxkbfile
      libxml2
      libxrandr
      libxrender
      libxshmfence
      libxtst
      libxxf86vm
      linux-pam
      lldb
      mesa
      mit-krb5
      musl
      nspr
      nss
      openssl
      pango
      pixman
      xz
      zlib))

    (native-inputs
     (list patchelf))

    (home-page "https://www.jetbrains.com/idea/")
    (supported-systems '("x86_64-linux"))
    (synopsis "JetBrains IntelliJ IDEA")
    (description
     "IntelliJ IDEA is JetBrains' integrated development environment for
Java, Kotlin, Groovy, Scala, and related JVM development.")
    (license
     (license:nonfree
      "https://www.jetbrains.com/legal/docs/toolbox/user/"))))
