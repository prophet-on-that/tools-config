(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))

(require 'cl)
(defvar packages-list
  '(flx-ido ido projectile haskell-mode) ;; ADD REQUIRED PACKAGES HERE
  "Packages required on launch")

(defun has-package-not-installed ()
  (loop for p in packages-list
        when (not (package-installed-p p)) do (return t)
        finally (return nil)))
(when (has-package-not-installed)
  ;; Check for new packages (package versions)
  (message "%s" "Get latest versions of all packages...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p packages-list)
    (when (not (package-installed-p p))
      (package-install p))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/saves"))))
 '(browse-url-browser-function (quote eww-browse-url))
 '(delete-old-versions t)
 '(flx-ido-mode t)
 '(haskell-process-suggest-remove-import-lines t)
 '(ido-buffer-disable-smart-matches nil)
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-faces nil)
 '(indent-tabs-mode nil)
 '(js-curly-indent-offset 2)
 '(js-enabled-frameworks (quote (javascript)))
 '(js-expr-indent-offset 2)
 '(js-indent-level 2)
 '(js-paren-indent-offset 2)
 '(js-square-indent-offset 2)
 '(kept-new-versions 6)
 '(tab-width 2)
 '(version-control t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "C-c r") 'replace-regexp)
(global-set-key (kbd "C-c R") 'replace-string)

;; Text mode specifics
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Projectile mode
(global-set-key (kbd "C-c P") 'projectile-mode)
(add-hook 'prog-mode-hook 'projectile-mode)

;; Haskell mode
(add-hook 'haskell-cabal-mode-hook 'projectile-mode) 
(require 'haskell-interactive-mode)
(require 'haskell-process)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

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
(define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

(define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
(define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
(define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)
