(defun my-find-file-check-make-large-file-read-only-hook ()
  "If a file is over a given size, make the buffer read only."
  (when (> (buffer-size) (* 1 1024 1024))
    (setq buffer-read-only t)
    (buffer-disable-undo)
    (fundamental-mode)
       (message "Buffer is set to read-only because it is large.  Undo also disabled.")
    ))

(add-hook 'find-file-hook 'my-find-file-check-make-large-file-read-only-hook)

(global-auto-complete-mode 0)
(global-git-gutter-mode 0)

(add-hook 'prog-mode-hook (lambda () (git-gutter-mode 1)))
(add-hook 'prog-mode-hook (lambda () (auto-complete-mode 1)))
