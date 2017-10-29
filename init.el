(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://stable.melpa.org/packages/"))
(package-initialize)

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt
        mac-command-modifier 'meta)
  (add-to-list 'default-frame-alist
               '(font . "Monaco-13")))

(push "~/.emacs.d/themes" load-path)
(push "~/.emacs.d/themes" custom-theme-load-path)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-RET") 'compile)
(global-set-key (kbd "C-x g") 'magit-status)
 
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
