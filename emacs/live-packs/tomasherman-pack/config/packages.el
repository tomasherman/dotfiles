(setq install-package-list
      '(scala-mode2
        multiple-cursors
        projectile
        ))

(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("sunrise" . "http://joseito.republika.pl/sunrise-commander/")))

;;;;;;;;; elpa bollocks:

; activate all the packages (in particular autoloads)
(setq package-user-dir "~/dotfiles/emacs/elpa")
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

; install the missing packages
(dolist (package install-package-list)
  (when (not (package-installed-p package))
    (package-install package)))
