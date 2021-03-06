(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://stable.melpa.org/packages/"))
(package-initialize)

(set-frame-font "Iosevka Medium-12" nil t)
(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt
        mac-command-modifier 'meta))

(push "~/.emacs.d/themes" load-path)
(push "~/.emacs.d/themes" custom-theme-load-path)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-O") 'ido-switch-buffer-other-window)
(global-set-key (kbd "M-RET") 'compile)
(global-set-key (kbd "C-x g") 'magit-status)

(use-package base16-theme
  :ensure t
  :init
  (setq base16-theme-256-color-source "base16-shell")
  :config
  (load-theme 'base16-gruvbox-dark-hard t))
 
(use-package parinfer
  :ensure t
  :bind ("C-," . parinfer-toggle-mode)
  :init
  (setq parinfer-extensions '(defaults
                              pretty-parens
                              smart-tab
                              smart-yank))
  (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
  (add-hook 'clojure-mode-hook #'parinfer-mode))

(use-package haskell-mode
  :bind (:map haskell-mode-map
         ("C-c C-l" . haskell-process-load-file)))

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))
