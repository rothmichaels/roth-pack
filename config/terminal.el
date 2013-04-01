;; fix the shell
;(window-number-mode -1)
(window-number-meta-mode -1)

(add-hook 'term-mode-hook
          '(lambda ()
             (yas-minor-mode 0)
             (define-key term-raw-map "\C-y" 'term-send-raw)))

;;; key bindings

;(global-set-key [?\C-c ?\C-r] 'eval-region)
                                        ; this should maybe not be global

