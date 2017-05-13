;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;常用设置
(load-library "d:/users/xq/dropbox/.emacs.d/el/init-utils.el")
;;未安装chinese-pyim
;;(load-library "d:/users/xq/dropbox/.emacs.d/el/init-chinese-pyim.el")
;;加密相关
(load-library "d:/users/xq/dropbox/.emacs.d/el/init-crypt.el")
;;字体设置
(load-library "d:/users/xq/dropbox/.emacs.d/el/init-font.el")
;;org模式设置
(load-library "d:/users/xq/dropbox/.emacs.d/el/init-org.el")
;;代理设置
(load-library "d:/users/xq/dropbox/.emacs.d/el/init-proxy.el")
;;todo tag设置
;;(load-library "d:/users/xq/dropbox/.emacs.d/el/init-todo.el")


