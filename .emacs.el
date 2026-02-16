;;; -*- lexical-binding: t -*-
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t)
 '(custom-enabled-themes '(modus-vivendi-tritanopia))
 '(display-line-numbers-type 'relative)
 '(electric-pair-mode t)
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(eldoc-mouse go-mode gruvbox-theme listen org rust-mode))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 15)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-number ((t (:inherit default :background "black" :foreground "#989898")))))
