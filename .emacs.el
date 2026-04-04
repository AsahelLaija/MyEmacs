;;; -*- lexical-binding: t -*-
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(menu-bar-mode 0)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'evil)
       (package-install 'evil))

(require 'evil)

(evil-mode 1)

;; move trough windows
(global-set-key (kbd "C-c w") 'windmove-up)
(global-set-key (kbd "C-c a") 'windmove-left)
(global-set-key (kbd "C-c s") 'windmove-down)
(global-set-key (kbd "C-c d") 'windmove-right)
(global-set-key (kbd "C-c E") 'find-file-other-tab)
(global-set-key (kbd "C-c n") 'tab-bar-switch-to-next-tab)
(global-set-key (kbd "C-c N") 'tab-bar-switch-to-prev-tab)
;;(global-set-key (kbd "C-c E") 'find-file)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c q") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
 '(blink-cursor-mode nil)
 '(cua-mode t)
 '(custom-enabled-themes '(nord))
 '(custom-safe-themes
   '("5a4cdc4365122d1a17a7ad93b6e3370ffe95db87ed17a38a94713f6ffe0d8ceb"
     "01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd"
     default))
 '(display-line-numbers-type 'relative)
 '(electric-pair-mode t)
 '(global-display-line-numbers-mode t)
 '(js-indent-level 8)
 '(package-selected-packages
   '(eglot eldoc evil go-mode gruber-darker-theme nord-theme org prettier))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 15)
 '(tab-bar-mode t)
 '(tool-bar-mode nil))
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
