;;; global adjustments

(live-load-config-file "fixes.el")
(live-load-config-file "global-modes.el")
(live-load-config-file "magit.el")
(live-load-config-file "terminal.el")
(live-load-config-file "keybindings.el")

(live-add-pack-lib "fireplace")
(require 'fireplace)

(setq roth-live-hl-mode-excludes '(term-mode))

(setq roth-live-untabify-modes '(java-mode)) ; TODO still use? Add to other modes?

;;; tramp
(require 'tramp)

;;; appearance

(defun gandalf () ; TODO move this to a lib file
 (interactive)
 (color-theme-gandalf)
 (set-face-background 'hl-line "#CCCCCC")
 (set-cursor-color 'DarkGreen))

(defun cyberpunk ()
 (interactive)
 (color-theme-cyberpunk)
 (set-face-background 'hl-line "grey13"))

;;(live-set-default-darwin-font "Courier 14")

; TODO Why did i remove this, I liked the sea green cursor
;(set-background-color "#f2eded")
;(set-cursor-color 'DarkSeagreen)

; TODO UI config
(blink-cursor-mode -1)
(tool-bar-mode -1)

;; TeX ; TODO why was this text stuff removed
;(load "auctex.el" nil t t)
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)

;(require 'tex-site)
