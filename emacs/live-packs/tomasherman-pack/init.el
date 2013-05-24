;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")
(live-load-config-file "packages.el")


; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

; activate all the packages (in particular autoloads)
(setq package-user-dir "~/dotfiles/emacs/elpa")
(package-initialize)
(package-refresh-contents)

; install the missing packages
(dolist (package install-package-list)
  (when (not (package-installed-p package))
    (package-install package)))
