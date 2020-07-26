;; [2020-07-20] Disable menu bar

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(menu-bar-mode -1)

;; [2020-07-20] Change colour of the status bar / modeline
(set-face-foreground 'mode-line "black")
(set-face-background 'mode-line "white")
(set-face-foreground 'mode-line-inactive "white")
(set-face-background 'mode-line-inactive "black")

;; [2020-07-20] Line numbers in programming modes
(global-linum-mode)
(setq linum-format "%3d  ")
;; (set-face-foreground 'linum "white")
;; (set-face-background 'linum "black")

;; [2020-07-20] Add column position to modeline
(setq column-number-mode t)

;; [2020-07-20] Package setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))

;; [2020-07-20] Add vi tildes
(load "~/config/emacs/vim-empty-lines-mode.el")
(global-vim-empty-lines-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (racket-mode haskell-mode use-package dashboard))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; [2020-07-20] Dashboard startup splash screen config
(use-package dashboard
	     :ensure t
	     :diminish dashboard-mode
	     :config
	     (setq dashboard-set-footer nil)
	     (setq dashboard-banner-logo-title "your custom t")
	     (setq dashboard-startup-banner 2)
	     (setq dashboard-items '((recents  . 10)
				     (bookmarks . 10)))
	         (dashboard-setup-startup-hook))
