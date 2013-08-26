(add-hook 'prog-mode-hook 'projectile-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)


; setup projectile variables
(setq projectile-cache-file "~/dotfiles/emacs/.projectile.cache")
(setq projectile-known-projects-file "~/dotfiles/emacs/.projectile.bookmarks")

(add-hook 'term-mode-hook (lambda ()
                            (yas-minor-mode -1)))
