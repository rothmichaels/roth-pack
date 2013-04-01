;;; global adjustments
;(live-add-pack-lib "my-setup")



(live-load-config-file "global-modes.el")
(live-load-config-file "terminal.el")

(setq roth-live-hl-mode-excludes '(term-mode))

(setq roth-live-untabify-modes '(java-mode))

(server-start)

;;; tramp
(require 'tramp)

(set-default 'tramp-default-proxies-alist (quote ((".*" "\\`root\\'" "/ssh:%h:"))))

;;; appearance

(defun gandalf ()
 (interactive)
 (color-theme-gandalf)
 (set-face-background 'hl-line "#CCCCCC")
 (set-cursor-color 'DarkGreen))

(defun cyberpunk ()
 (interactive)
 (color-theme-cyberpunk)
 (set-face-background 'hl-line "grey13"))

;;(live-set-default-darwin-font "Courier 14")

;(set-background-color "#f2eded")
;(set-cursor-color 'DarkSeagreen)
(blink-cursor-mode -1)
(tool-bar-mode -1)

(set-frame-position (selected-frame) 0 0)
(set-frame-height (selected-frame) 66)
(set-frame-width (selected-frame) 208)
(split-window-right)

;; TeX
;(load "auctex.el" nil t t)
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)

;(require 'tex-site)