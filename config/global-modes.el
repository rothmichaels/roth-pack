;; my custom global mode settings

;; global-hl-line-mode
(defvar roth-live-hl-mode-excludes '()
  "list of major modes to turn off global-hl-line-mode")

(define-global-minor-mode roth-live-global-hl-line-mode global-hl-line-mode
  (lambda ()
    (when (not (memq major-mode
                     roth-live-hl-mode-excludes))
      (hl-line-mode))))

(global-hl-line-mode -1)
(roth-live-global-hl-line-mode 1)
(setq roth-live-hl-mode-excludes nil)

;; tabs
(defvar roth-live-untabify-modes '(java-mode))

 (defun roth-live-untabify-hook ()
  (when (memq major-mode roth-live-untabify-modes)
    (tabify (point-min) (point-max))))

(setq before-save-hook nil)
;; (add-hook 'before-save-hook 'roth-live-untabify-hook)

;; minor modes settings
(defun roth-live-paredit ()
  (interactive)
  (paredit-mode 1))

(defun roth-live-linum ()
  (interactive)
  (linum-mode 1))

(defun roth-live-auto-fill ()
  (interactive)
  (auto-fill-mode 1))

;; automodes
(add-to-list 'auto-mode-alist '("MERGE_MSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.gypi?" . python-mode))
(add-to-list 'auto-mode-alist '("\\.h" . c++-mode))

;; LISP
;(add-hook 'lisp-mode-hook 'roth-live-paredit-on)

;; Emacs Lisp
;(add-hook 'emacs-lisp-mode-hook 'roth-live-paredit-on)

;; C++
(defun roth-c++-indent ()
  (interactive)
  (setq tab-width 4 c-basic-offset 4 indent-tabs-mode t))

(add-hook 'c++-mode-hook 'roth-c++-indent)

;; xml
(defun izo-xml-indent ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq nxml-child-indent 4 nxml-attribute-indent 4)
  (setq tab-width 4))

(defun izo-xml-hook ()
  (interactive)
  (izo-xml-indent)
  (auto-fill-mode 0))

(add-hook 'nxml-mode-hook 'izo-xml-hook)

;; Shell Script
(defun roth-shell-indent ()
  (interactive)
  (setq tab-width 4
        sh-basic-offset 4
        indent-tabs-mode t
        sh-indent-for-case-label 2
        sh-indent-for-case-alt '+))

(add-hook 'shell-mode-hook 'roth-shell-indent)


;; Markdown
(add-hook 'markdown-mode-hook 'roth-live-auto-fill)
(defun fill-100 ()
  (set-fill-column 100))
(add-hook 'markdown-mode-hook 'fill-100)

;; java
(defun tab-width-4 ()
  (setq tab-width 4))
(add-hook 'java-mode-hook 'tab-width-4)



;; diff
(add-hook 'diff-mode-hook 'roth-live-auto-fill)
                                        ;
(defun roth-restore-backward-kill-word ()
  (interactive)
  (local-set-key [M-backspace] 'backward-kill-word))

(add-hook 'diff-mode-hook '(lambda ()
                             (local-set-key [M-backspace] 'backward-kill-word)))
