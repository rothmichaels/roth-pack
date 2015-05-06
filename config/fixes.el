;; remove the monkeypatch basic-save-buffer setup by foundation-pack

(defalias 'basic-save-buffer 'live-mp-new-basic-save-buffer)
