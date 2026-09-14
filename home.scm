(use-modules (gnu home)
			 (gnu packages))

(home-environment
 (packages
  (specifications->packages
   (list
	"git"
	"ripgrep"
	"fd"
	"jq"
	"tree"))))
