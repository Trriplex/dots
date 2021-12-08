(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(set-face-attribute 'default nil :font "Deja Vu Sans Mono" :height 130)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(setq indent-tabs-mode t)
(setq tab-width 4)

(global-set-key (kbd "<f5>") (lambda () (interactive) (save-buffer) (shell-command "make")))

(require 'evil)
(evil-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-buffer-choice "~/Documents/")
 '(package-selected-packages
   '(evil-visual-mark-mode slime org linum-relative haskell-mode gruvbox-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruvbox)
(setq make-backup-files nil)
(setq inferior-lisp-program "sbcl")
