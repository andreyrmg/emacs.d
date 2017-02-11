(package-initialize)

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'alt
	mac-command-modifier 'meta))

(push "~/.emacs.d/themes" load-path)
(push "~/.emacs.d/themes" custom-theme-load-path)

(set-face-attribute 'default nil :height 135)

(global-set-key (kbd "M-o") 'other-window)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" default)))
 '(ido-enable-flex-matching t)
 '(ido-enable-last-directory-history nil)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-echo-area-message "andrey")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(shift-select-mode nil)
 '(split-width-threshold 140)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
