(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook
  ((java-ts-mode . lsp-deferred)
   (typescript-ts-mode . lsp-deferred)
   (tsx-ts-mode . lsp-deferred))
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t))


(use-package magit
  :bind ("C-x g" . magit-status))

;; Java
(use-package lsp-java
  :after lsp-mode
  :custom
  (lsp-java-vmargs
   '("-Xmx8G"
	 "-javaagent:/home/joao/.m2/repository/org/projectlombok/lombok/1.18.46/lombok-1.18.46.jar")))

(use-package java-ts-mode
  :mode "\\.java\\'")

;; JavaScript/TypeScript
(use-package typescript-ts-mode
  :mode (("\\.js\\'" . typescript-ts-mode)
		 ("\\.ts\\'" . typescript-ts-mode)
		 ("\\.tsx\\'" . tsx-ts-mode)))

;; Debug
(use-package dap-mode
  :after lsp-mode)
