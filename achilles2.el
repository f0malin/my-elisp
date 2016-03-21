(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default cperl-indent-level 4)

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(defalias 'perl-mode 'cperl-mode)

;; duplicate line
(defun duplicate-line ()
  "Duplicate a line"
  (interactive)
  (move-beginning-of-line nil)
  (set-mark-command nil)
  (move-end-of-line nil)
  (kill-ring-save (mark) (point))
  (newline)
  (yank)
  )
(global-set-key "\C-cd" 'duplicate-line)
;; goto-line
(global-set-key "\C-cg" 'goto-line)

(setq make-backup-files nil)
(setq-default make-backup-files nil)
