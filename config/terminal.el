;; fix the shell (this doesn't seem to be needed anymore, keeping as a reminder)
;(window-number-mode -1)
;(window-number-meta-mode 1)

(setq term-mode-hook nil)

(defun roth-term-mode-hook ()
  (goto-address-mode)
  (yas-minor-mode 0))

(add-hook 'term-mode-hook 'roth-term-mode-hook)

(define-key term-raw-map (kbd "s-v") 'term-paste)
