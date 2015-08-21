(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )

;; Backups in emacs. Recall backups record state at the start of a session.
(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))
(setq backup-by-copying t)

;; Tab configuration
(setq-default indent-tabs-mode nil)
(setq-default default-tab-width 2)

(global-set-key (kbd "C-c r") 'replace-regexp)
(global-set-key (kbd "C-c R") 'replace-string)

;; Text mode specifics
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Ido configuration 
(require 'flx-ido)
(require 'ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Projectile
(global-set-key (kbd "C-c P") 'projectile-mode)

;; Haskell-specific
;;(add-to-list 'load-path "~/lib/emacs/haskell-mode/")
(require 'haskell-mode-autoloads)
;; (add-to-list 'Info-default-directory-list "~/lib/emacs/haskell-mode/")

(add-hook 'haskell-cabal-mode-hook 'projectile-mode) ;; As haskell-cabal-mode doesn't derive prog-mode
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(define-key haskell-mode-map (kbd "C-c h l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-c h c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c h s") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c h d") 'haskell-mode-jump-to-def)
(define-key haskell-mode-map (kbd "C-c h k") 'haskell-interactive-mode-clear)
(define-key haskell-mode-map (kbd "C-c h i") 'haskell-navigate-imports)
(define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
(define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
(define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)
(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(case-fold-search t)
'(haskell-mode-hook (quote (turn-on-haskell-indentation)))
'(haskell-process-auto-import-loaded-modules t)
'(haskell-process-log t)
'(haskell-process-show-debug-tips nil)
'(haskell-process-suggest-remove-import-lines t)
'(haskell-process-type (quote cabal-repl)))
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa-stable" . "http://stable.melpa.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
