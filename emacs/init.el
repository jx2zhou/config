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
(setq linum-format "%4d   ")
;; (set-face-foreground 'linum "white")
;; (set-face-background 'linum "black")

;; [2020-07-20] Add column position to modeline
(setq column-number-mode t)

;; [2020-07-20] Package setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; [2020-07-20] Add vi tildes
(load "~/config/emacs/vim-empty-lines-mode.el")
(vim-empty-lines-mode)
