(live-add-pack-lib "/ensime/elisp/")

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
