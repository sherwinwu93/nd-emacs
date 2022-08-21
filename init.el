;;(package-initialize)
;; 递归遍历加载路径
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`"
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

(add-subdirs-to-load-path "~/.emacs.d/lisp/")
(defun init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(defun load-init-file()
  (interactive)
  (load-file "~/.emacs.d/init.el"))
;; ----------------------------------------包管理和evil放最上面
(require 'init-packages)
(require 'init-evil)
(require 'init-input)
;; ----------------------------------------
(require 'init-better-defaults)
(require 'init-files)
(require 'init-edit)
(require 'init-tab)
(require 'init-project)
;; ----------------------------------------
(require 'init-code)
(require 'init-kbd-macros)
(require 'init-org)
(require 'init-shell)
;; ----------------------------------------
(require 'init-translate)
(require 'init-vc)
(require 'init-scheme)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org org-contrib emms emms-setup auto-save company flycheck dashboard multiple-cursors undo-tree amx smartparens rime posframe cnfonts window-numbering which-key use-package evil-surround evil-nerd-commenter evil-leader counsel avy))
 '(warning-suppress-types '((use-package) (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
