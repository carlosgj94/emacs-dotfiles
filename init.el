:; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;; packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
package-archives )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company key-chord dashboard projectile page-break-lines ## evil use-package general)))
 '(tool-bar-mode nil))

;; Window sizes
(add-to-list 'default-frame-alist '(height . 124))
(add-to-list 'default-frame-alist '(width . 124))

;; Hide non useful UI
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; disable highlighting the current line
(global-hl-line-mode 0)

;; Smooth scrolling
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
(setq scroll-margin 2)

;; Remove all backup files
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Load config
(setq package-list '(evil
		     evil-leader))

;; Settings files
(defvar settings-dir
  (expand-file-name "config" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(require 'black-theme)
(require 'evil-configuration)
(require 'dashboard-config)
(require 'company-config)

;; Fonts
(set-frame-font "Inconsolata Nerd Font 18" nil t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((((class color) (min-colors 89)) (:background "#fff0f2" :foreground "#677468")))))
