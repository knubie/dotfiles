(require 'ido)
(ido-mode t)

(menu-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;(auto-complete popup evil goto-last-change undo-tree goto-last-change popup relative-line-numbers undo-tree vimish-fold f dash s)

(evil-mode 1)        ;; enable evil-mode
;(setq evil-insert-state-cursor '("red" bar))

(defun my-evil-terminal-cursor-change ()
		(when (string= (getenv "TERM_PROGRAM") "iTerm.app")
	(add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\e]50;CursorShape=1\x7")))
	(add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\e]50;CursorShape=0\x7"))))
		(when (and (getenv "TMUX") (string= (getenv "TERM_PROGRAM") "iTerm.app"))
	(add-hook 'evil-insert-state-entry-hook (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=1\x7\e\\")))
	(add-hook 'evil-insert-state-exit-hook  (lambda () (my-send-string-to-terminal "\ePtmux;\e\e]50;CursorShape=0\x7\e\\")))))

(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd ":") 'evil-repeat-find-char)
  (define-key evil-motion-state-map (kbd ";") 'evil-ex))

(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
(setq ac-auto-show-menu nil) ;; Don't show menu when completing
(setq ac-use-quick-help nil) ;; Disable tooltip help
(define-key ac-completing-map "\C-f" 'ac-complete) ;; Set <C-f> to force completion
;;(define-key ac-completing-map "\t" nil)
;;(define-key ac-completing-map "\t" 'ac-next)
;(add-to-list 'load-path "~/.emacs.d/coffee-mode")
;(add-to-list 'ac-modes 'coffee-mode)
;(require 'coffee-mode)

(global-hl-line-mode)

(defun relative-abs-line-numbers-format (offset)
  "The default formatting function.
  Return the absolute value of OFFSET, converted to string."
  (if (= 0 offset)
      (concat (number-to-string (line-number-at-pos)) " ")
    (concat (number-to-string (abs offset)) " ")))

(setq relative-line-numbers-format 'relative-abs-line-numbers-format)

(global-relative-line-numbers-mode)
; Enable hide/show minor mode (code folding) in all programming modes)
(add-hook 'prog-mode-hook #'hs-minor-mode)
; Set background color for the hl-lin (cursorline)
(set-face-background hl-line-face "magenta")
;(define-key evil-normal-state-map (kbd "RET") (kbd "C-c @ C-c"))
(add-hook 'prog-mode-hook #'vimish-fold-mode)
(define-key evil-normal-state-map (kbd "RET") #'vimish-fold-toggle)

; http://david.rothlis.net/emacs/customize_colors.html
(custom-set-faces
  '(relative-line-numbers ((t (:foreground "white"))))
  '(relative-line-numbers-current-line ((t (:foreground "black"))))
  '(font-lock-string-face ((t (:foreground "black" :slant italic))))
  '(font-lock-variable-name-face ((t (:foreground "black"))))
  '(font-lock-constant-face ((t (:foreground "black" :weight bold))))
  '(font-lock-keyword-face ((t (:foreground "black" :weight bold))))
  '(ac-completion-face ((t (:foreground "white" :background "magenta"))))
  '(font-lock-comment-face ((t (:foreground "white")))))

; Remove status line
(setq-default mode-line-format nil)
