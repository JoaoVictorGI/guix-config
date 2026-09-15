;; Basic emacs configurations
(use-package emacs
  :init
  (setq use-short-answers t
		backup-directory-alist '(("." . "~/.saves"))
		create-lockfiles nil
		tab-always-indent 'complete)
  :config
  (setq-default truncate-lines t
				display-line-numbers t
				fill-column 80
				tab-width 4)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (show-paren-mode 1)
  (scroll-bar-mode -1)
  (electric-pair-mode 1)
  (delete-selection-mode 1) ; Automatically delete selected text when you start typing
  (global-visual-line-mode 1))


;; Theme
(load-theme 'modus-operandi-tinted)

(use-package windmove
  :bind
  (("M-<left>" . windmove-left)
   ("M-<right>" . windmove-right)
   ("M-<up>" . windmove-up)
   ("M-<down>" . windmove-down)))


(use-package golden-ratio
  :hook (after-init . golden-ratio-mode)
  :config
  (golden-ratio-toggle-widescreen))


(use-package vundo
  :config
  (setq vundo-compact-display t)
  :bind
  ("C-M-z" . vundo))


;; Follow symlinks that links to a file in a git repo
(setq vc-follow-symlinks t)

(setq xref-search-program 'ripgrep)


;; Completion
(use-package vertico
  :config
  (vertico-mode)
  (vertico-multiform-mode)
  :custom
  (vertico-resize t)
  (vertico-count 15))

(use-package marginalia :init (marginalia-mode))

(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.1)
  (corfu-auto-trigger ".")
  (corfu-quit-no-match t))



(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-pcm-leading-wildcard t)
  (orderless-matching-styles '(orderless-flex orderless-regexp orderless-literal)))


(use-package which-key
  :init
  (which-key-mode)
  (which-key-setup-minibuffer)
  :custom
  (which-key-idle-delay 0.3)
  (which-key-sort-order 'which-key-key-order-alpha)
  (which-key-min-display-lines 3)
  (which-key-max-display-columns nil))


;; RSS Reader
(use-package newsticker
  :custom
  (newsticker-url-list
   '(("Sasha Chua's Blog" "https://sachachua.com/blog/feed")
     ("Protesilaos Stavrou" "https://protesilaos.com/master.xml")
     ("Planet Emacs Life" "https://planet.emacslife.com/atom.xml")
     ("Karl Voit – Lazyblorg" "https://karl-voit.at/feeds/lazyblorg-all.atom_1.0.links-and-content.xml")
     ("Irreal" "https://irreal.org/blog/?feed=rss2")
     ("Emacs Wiki" "https://www.emacswiki.org/emacs?action=rss")
	 ("Emacs Redux" "https://emacsredux.com/atom.xml")
     ("Gluer.org" "https://gluer.org/rss/")
     ("fnguy.com" "https://fnguy.com/atom.xml")
     ("Xenodium" "https://xenodium.com/feed")
     ("j3s" "https://j3s.sh/feed.atom")
     ("Database Debunkings" "https://www.dbdebunk.com/feeds/posts/default")
     ("My DBA Notebook" "https://mydbanotebook.org/posts/")
     ("Clojure" "https://clojure.org/feed.xml")
     ("Planet Clojure" "https://planet.clojure.in/")
     ("(concat)" "https://clojurebr.substack.com/feed")
     ("JVM Weekly" "https://www.jvm-weekly.com/feed")
     ("Inside Java" "https://inside.java/feed.xml")
     ("JetBrains Blog" "https://blog.jetbrains.com/feed/")
     ("Vlad Mihalcea" "https://vladmihalcea.com/feed/")
     ("SivaLabs" "https://www.sivalabs.in/index.xml")
	 ("Arkenfox" "https://github.com/arkenfox/user.js/releases.atom")
	 ("Stripe" "https://stripe.dev/blog/feed")
	 ("Engineering Blogs" "https://engineeringblogs.xyz/engblogs.opml")
	 ("Netflix Techblog" "https://netflixtechblog.com/feed")
	 ("Engineering at Meta" "https://engineering.fb.com/feed"))))

(defun my/close-newsticker ()
  "Kill all tree-view related buffers."
  (kill-buffer "*Newsticker List*")
  (kill-buffer "*Newsticker Item*")
  (kill-buffer "*Newsticker Tree*"))

(advice-add 'newsticker-treeview-quit :after 'my/close-newsticker)


(use-package elpher
  :hook (elpher-mode . (lambda ()
						 (display-line-numbers-mode 0)
						 (visual-line-mode 1)
						 (let* ((text-width 70)
								(margin (max 0 (/ (- (window-body-width) text-width) 2))))
						   (set-window-margins nil margin margin)))))


;; Org
(use-package denote
  :custom
  (denote-directory (expand-file-name "~/org/"))
  :hook
  (dired-mode . denote-dired-mode)
  :bind
  (("C-c n n" . denote)
   ("C-c n r" . denote-rename-file)
   ("C-c n l" . denote-link)
   ("C-c n b" . denote-backlinks)
   ("C-c n d" . denote-dired)
   ("C-c n g" . denote-grep))
  :config
  (denote-rename-buffer-mode 1))
(use-package denote-org)

(setq org-agenda-include-diary t
	  org-agenda-diary-file "~/diary"
	  diary-file "~/diary")

;;; PlantUML
(setq org-plantuml-exec-mode 'plantuml)
(use-package plantuml-mode
  :custom (org-plantuml-executable-path (executable-find "plantuml")))


(load-file "~/.emacs.d/programming.el")


;; Pinentry
(setq epg-pinentry-mode 'loopback)


;; Kill dired buffer when changing directory
(setq dired-kill-when-opening-new-dired-buffer t)
