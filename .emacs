(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))

(require 'cl)
(defvar packages-list
  '(color-theme-modern theme-looper highlight-indentation helm projectile helm-projectile haskell-mode) ;; ADD REQUIRED PACKAGES HERE
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/saves"))))
 '(browse-url-browser-function (quote eww-browse-url))
 '(custom-safe-themes
   (quote
    ("fd7ef8af44dd5f240e4e65b8a4eecbc37a07c7896d729a75ba036a59f82cfa58" "fc89666d6de5e1d75e6fe4210bd20be560a68982da7f352bd19c1033fb7583ba" "31772cd378fd8267d6427cec2d02d599eee14a1b60e9b2b894dd5487bd30978e" default)))
 '(delete-old-versions t)
 '(haskell-process-suggest-remove-import-lines t)
 '(helm-boring-buffer-regexp-list
   (quote
    ("\\` " "\\*helm" "\\*helm-mode" "\\*Echo Area" "\\*Minibuf" "\\*Messages" "\\*GNU Emacs" "\\*scratch" "\\*Completions")))
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

;; Appearance
(menu-bar-mode -99) ;; Disable menu bar
(load-theme 'hober t)
(global-set-key (kbd "C-c n") 'theme-looper-enable-next-theme)

;; Text mode specifics
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Helm and Projectile configuration
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c f") 'helm-recentf)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c <SPC>") 'helm-all-mark-rings)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h i") 'helm-info-at-point)
(global-set-key (kbd "C-h a") 'helm-apropos)
(global-set-key (kbd "C-c s") 'helm-occur)
(global-set-key (kbd "C-c b") 'helm-projectile)
(define-key global-map (kbd "C-c g") 'helm-projectile-grep)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)
(define-key global-map [remap jump-to-register] 'helm-register)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(define-key global-map [remap find-tag] 'helm-etags-select)
(define-key global-map [remap xref-find-definitions] 'helm-etags-select)
(global-set-key (kbd "C-c c") 'projectile-compile-project)

;; Haskell mode
;; (defun haskell-set-indentation-offset ()
;;   (interactive)
;;   (highlight-indentation-set-offset 2))
(add-hook 'haskell-mode-hook 'highlight-indentation-mode)
(add-hook 'haskell-mode-hook
          (lambda ()
             (highlight-indentation-set-offset 2)))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command) "stack build")))
(add-hook 'haskell-cabal-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command) "stack build")))
(add-hook 'haskell-mode-hook 'projectile-mode)
(add-hook 'haskell-cabal-mode-hook 'projectile-mode)
(add-hook 'haskell-mode-hook
          (lambda ()
            (set (make-local-variable 'projectile-project-compilation-cmd) "stack build")))
(add-hook 'haskell-cabal-mode-hook
          (lambda ()
            (set (make-local-variable 'projectile-project-compilation-cmd) "stack build")))
