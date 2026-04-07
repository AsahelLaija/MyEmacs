
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

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
 '(auto-save-file-name-transforms `((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
 '(custom-enabled-themes '(leuven-dark)))

(setq package-selected-packages
 '(eglot eldoc evil go-mode 2048-game))

(unless package-archive-contents
  (package-refresh-contents))
(package-install-selected-packages)

; vi mode mask
(require 'evil)
(evil-mode 1)

;	have on mind use ido mode on everything
;(ido-mode 1)
