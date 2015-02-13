(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )

;; Instruct emacs to save backups in folder global to the user.
(setq auto-save-file-name-transforms
			`((".*", (concat user-emacs-directory "auto-save/") t)))

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
