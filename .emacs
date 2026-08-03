(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)
(electric-pair-mode 1)
(column-number-mode 1)
(desktop-save-mode 1)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq ring-bell-function 'ignore)
(setq scroll-conservatively 10)

(global-set-key (kbd "C-c w") 'windmove-up)
(global-set-key (kbd "C-c a") 'windmove-left)
(global-set-key (kbd "C-c s") 'windmove-down)
(global-set-key (kbd "C-c d") 'windmove-right)
(global-set-key (kbd "C-c E") 'find-file-other-tab)
(global-set-key (kbd "C-c n") 'tab-bar-switch-to-next-tab)
(global-set-key (kbd "C-c N") 'tab-bar-switch-to-prev-tab)
(add-to-list 'default-frame-alist '(alpha-background . 75))

; cursor line
(global-hl-line-mode 1)
(set-face-underline 'hl-line nil)
(set-face-background 'hl-line nil)
(set-face-foreground 'hl-line nil)

(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

;	disable splash screen and startup message
;(normal-splash-screen 0)
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;;	Themes
;; I have on mind (leuven-dark) and (manoj-dark)
;; and (wheatgrass) have more contrast than (wombat) but is to dark
;; maybe give it a try later.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms `((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
 '(custom-enabled-themes '(leuven-dark))
 '(display-buffer-base-action '((display-buffer-below-selected)))
 '(global-text-scale-adjust-resizes-frames t)
 '(grep-command "grep --color=auto -nr --null -e ")
 '(grep-find-command
   '("find . -type f -exec grep --color=auto -nH --null -e  \\{\\} +"
     . 54))
 '(grep-find-template
   "find -H <D> <X> -type f <F> -exec grep <C> -nr --null -e <R> \\{\\} +")
 '(grep-find-use-xargs 'exec-plus)
 '(grep-highlight-matches 'auto)
 '(grep-template "grep <X> <C> -nr --null -e <R> <F>")
 '(grep-use-null-device nil)
 '(grep-use-null-filename-separator t)
 '(package-selected-packages '(## 2048-game eglot eldoc evil go-mode)))

(setq package-selected-packages
 '(eglot eldoc evil go-mode 2048-game))

(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

; vi mode mask
(require 'evil)
(evil-mode 1)
(ido-mode 1)


(evil-define-key 'normal 'global (kbd "SPC w") 'save-buffer)
(evil-define-key 'normal 'global (kbd "SPC n") 'tab-bar-switch-to-next-tab)
(evil-define-key 'normal 'global (kbd "SPC N") 'tab-bar-switch-to-prev-tab)
(evil-define-key 'normal 'global (kbd "SPC D") 'delete-window)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(defun transparent(alpha-level no-focus-alpha-level)
; "Let's you make the window transparent"
; (interactive "nAlpha level (0-100): \nnNo focus alpha level (0-100): ")
; (set-frame-parameter (selected-frame) 'alpha (list alpha-level no-focus-alpha-level))
; (add-to-list 'default-frame-alist `(alpha ,alpha-level)))
