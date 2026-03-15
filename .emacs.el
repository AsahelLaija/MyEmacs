;;; -*- lexical-binding: t -*-
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'evil)
       (package-install 'evil))

(require 'evil)

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
 '(custom-enabled-themes '(modus-vivendi-tritanopia))
 '(display-line-numbers-type 'relative)
 '(electric-pair-mode t)
 '(global-display-line-numbers-mode t)
 '(js-indent-level 8)
 '(package-selected-packages
   '(## eldoc-mouse evil go-mode gruvbox-theme listen multiple-cursors
	org rust-mode tramp))
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
 '(line-number ((t (:inherit default :background "black" :foreground "#989898")))))
(put 'upcase-region 'disabled nil)
