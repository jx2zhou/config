;; [2020-07-20] Disable menu bar
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



