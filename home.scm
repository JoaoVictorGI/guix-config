(use-modules (gnu home)
			 (gnu packages)
			 (gnu services)
			 (gnu home services)
			 (gnu home services shells)
			 (gnu home services gnupg)
			 (gnu packages gnupg)
			 (guix gexp))

(home-environment
 (packages
  (specifications->packages
   (list
	"git"
	"ripgrep"
	"fd"
	"jq"
	"tree")))

 (services
  (list
   
   (simple-service
	'user-environment
	home-environment-variables-service-type
	'(("PATH" . "$HOME/.local/bin:$HOME/bin:$PATH")))
   
   (service
	home-bash-service-type
	(home-bash-configuration
	 (guix-defaults? #t)
	 (aliases
	  '(("l" . "ls -l")
		("la" . "ls -lAh --group-directories-first --color=auto")
		("ls" . "ls -h --group-directories-first --color=auto")))
	 (bashrc
	  (list
	   (plain-file
		"gpg-terminal"
		"\
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
")))))
   
   (service
	home-gpg-agent-service-type
	(home-gpg-agent-configuration
	 (ssh-support? #t)
	 (pinentry-program
	  (file-append pinentry-gnome3 "/bin/pinentry-gnome3"))
	 (default-cache-ttl 34560000)
	 (default-cache-ttl-ssh 34560000)
	 (max-cache-ttl 34560000)
	 (max-cache-ttl-ssh 34560000)
	 (extra-content
	  "allow-emacs-pinentry\n"))))))
