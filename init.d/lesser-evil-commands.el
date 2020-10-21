;; Commands that are not available in vanilla emacs, and that are not worth
;; pulling in a separate package to provide them. These should eventually end up
;; in their own utility package, we do not want too much of this stuff directly
;; in the emacs config.

(defun lesser-evil/switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun lesser-evil/cider-toggle-repl ()
  (interactive)
  (if (eq m 'cider-repl-mode)
      (cider-switch-to-last-clojure-buffer)
    (cider-switch-to-repl-buffer)))

(provide 'lesser-evil-commands)