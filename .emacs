;; ============== Egne Instillinger ==================

;fix for that f**king backspace problem when using some ssh-clients
(define-key  global-map  "\010"  'backward-delete-char-untabify)

(global-set-key '[f11] 'previous-error)
(global-set-key '[f12] 'next-error)

(set-background-color "black")
(set-foreground-color "white")

;; Fikser norsk tegnsett:
;;(standard-display-european 1)
(set-keyboard-coding-system 'utf-8)

;; Setter Home og End til begynnelse og slutt av linje istedenfor buffer
(global-set-key [home] 'beginning-of-line)
(global-set-key [end] 'end-of-line)

(setq load-path (cons "/usr/local/share/emacs/site-lisp/" load-path))

;; Farger på kode
(global-font-lock-mode)

;;Tab-width and spaces only
(setq tab-width 4)
(setq-default indent-tabs-mode nil)

;; Ingen autosave-filer, ~'filer
(setq backup-inhibited t)

;;tar bort meny i consol, får den jo fram med F10 uansett...
(unless window-system
  (menu-bar-mode -1))
