;;; -*- no-byte-compile: t -*-

;; This is your user keys file, here you can configure key bindings that will
;; get added to Corgi. You can also override Corgi's default bindings this way.
;;
;; Bindings here are nested, e.g. `("SPC" ("b" ("k" kill-buffer)))' means that
;; "space" followed by "b" and then "k" will invoke `M-x kill-buffer'.
;;
;; You can add a descriptions before the command, this will show up in a pop-up
;; when you press the prefix key and wait a bit. (This uses which-key)
;;
;; `("SPC" ("b" ("k" "Choose a buffer to kill" kill-buffer)))'
;;
;; Instead of a prefix key you can use a symbol like `normal' or `insert', which
;; designates the Evil state (what vim calls the mode). `global' means any
;; state, `normal|visual' means either normal or visual.
;;
;; Instead of a command like `kill-buffer' you can put a keyword like
;; `:eval/buffer'. This is called a "signal". In the `corgi-signals' (or
;; `user-signals') file these are bound to specific commands based on the major
;; mode. E.g. in Emacs Lisp `:eval/buffer' means `eval-buffer', whereas in
;; Clojure it means `cider-eval-buffer'.

(bindings
 ;; "global" bindings are always active regardless of Evil's "state" (= vim mode)
 ;; If you don't provide this the default is `normal'.
 (global
  )

 ;; Bindings for commands are usually only active in normal and visual state.
 (normal|visual
  ("SPC"
   ("g"
    ("l" "Magit list repos" magit-list-repositories)
    ("b" "Give Credit/Blame" blamer-show-commit-info))
   ("0" "Select Treemacs" treemacs-select-window)
   ("f"
    ("t" "Turn Treemacs on/off" treemacs)
    ("T" "Focus current file in file tree" treemacs-find-file))
   ("o" "org-mode"
    ("r" "org-roam"
     ("l" "Roam buffer toggle" org-roam-buffer-toggle)
     ("i" "Roam node insert" org-roam-node-insert)
     ("f" "Roam node find" org-roam-node-find)
     ("d" "org-roam-dailies"
      ("g" "Roam goto"
       ("t" "Roam dailies goto today" org-roam-dailies-goto-today)
       ("c" "Roam dailies goto date" org-roam-dailies-goto-date))
      ("c" "Roam capture"
       ("t" "Roam dailies capture today" org-roam-dailies-capture-today)
       ("c" "Roam dailies capture date" org-roam-dailies-capture-date)))))

   )))
