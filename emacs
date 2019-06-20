;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; http://melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Set Path to Updated Org-Mode
(setq load-path (cons "/usr/local/Build/Emacs/org-mode/lisp" load-path))
(setq load-path (cons "/usr/local/Build/Emacs/org-mode/contrib/lisp"
load-path))

;; Enable org-mode
(require 'org-install)
(setq org-todo-keywords
        '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;; Make org-mode work with files ending in .org
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;f; The above is the default in recent emacsen

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (projectile neotree solarized-theme ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'solarized-dark t)

;; Dependency for neo-theme, https://github.com/domtronn/all-the-icons.el
(require 'all-the-icons)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-git-submodule-command nil) ;; https://github.com/bbatsov/projectile/issues/1299

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-smart-open t) ;; Every time when the neotree window is opened, let it find current file and jump to node.

;; Open neotree on startup, https://github.com/jaypei/emacs-neotree/issues/164
(defun neotree-startup ()
  (interactive)
  (neotree-show)
  (neotree-dir "~/Dropbox") ;; set default neotree directory
  (call-interactively 'other-window))
(if (daemonp)
  (add-hook 'server-switch-hook #'neotree-startup)
  (add-hook 'after-init-hook #'neotree-startup)
)

;; open as maximized, https://stackoverflow.com/questions/7763847/maximize-emacs-on-start-up-not-the-fullscreen
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; place backups in one directory, https://emacs.stackexchange.com/questions/33/put-all-backups-into-one-backup-folder
(setq backup-directory-alist '(("." . "~/.emacs_backups")))
