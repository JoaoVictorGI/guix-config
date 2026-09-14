(use-modules (gnu home)
			 (gnu packages)
			 (gnu services)
			 (gnu home services)
			 (gnu home services shells)
			 (gnu home services gnupg)
			 (gnu packages gnupg)
			 (guix gexp))

(define gpg-cache-ttl
  (* 400 24 60 60))

(home-environment
 (packages
  (specifications->packages
   (list
	"git"
	"ripgrep"
	"fd"
	"jq"
	"tree"
	"glibc-locales")))

 (services
  (list
   
   (simple-service
	'user-environment
	home-environment-variables-service-type
	'(("PATH" . "$HOME/.local/bin:$HOME/bin:$PATH")))

   (simple-service
	'git-config
	home-files-service-type
	`((".gitconfig" ,(local-file "files/git/config"))))
   
   (service
	home-bash-service-type
	(home-bash-configuration
	 (guix-defaults? #t)
	 (aliases
	  '(("l" . "ls -l")
		("la" . "ls -lAh --group-directories-first --color=auto")
		("ls" . "ls -h --group-directories-first --color=auto")))))
   
   (service
	home-gpg-agent-service-type
	(home-gpg-agent-configuration
	 (ssh-support? #t)
	 (pinentry-program
	  (file-append pinentry-gnome3 "/bin/pinentry-gnome3"))
	 (default-cache-ttl gpg-cache-ttl)
	 (default-cache-ttl-ssh gpg-cache-ttl)
	 (max-cache-ttl gpg-cache-ttl)
	 (max-cache-ttl-ssh gpg-cache-ttl)
	 (extra-content
	  "allow-emacs-pinentry\n"))))))
