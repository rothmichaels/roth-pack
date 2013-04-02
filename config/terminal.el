;; fix the shell
(window-number-mode -1)
(window-number-meta-mode 1)

(setq term-mode-hook nil)

(defun roth-term-mode-hook ()
  (goto-address-mode)
  (yas-minor-mode 0))

(add-hook 'term-mode-hook 'roth-term-mode-hook)

;(define-key term-raw-map "\C-y" 'term-send-raw)


;;; key bindings

;(global-set-key [?\C-c ?\C-r] 'eval-region)
                                        ; this should maybe not be global

