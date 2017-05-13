(setq default-directory "~/")
;;关闭欢迎界面  
(setq inhibit-startup-message t)  
;;disable bell
(setq ring-bell-function 'ignore) 
;; 显示时间，格式如下  
(display-time-mode 1)  
(setq display-time-24hr-format t)  
(setq display-time-day-and-date t)  
;;显示行号  
(global-linum-mode 1)
;; all backups goto ~/.emacs.backups instead in the current directory
(setq backup-directory-alist (quote (("." . "~/.emacs.backups"))))
;;C-Space被输入法占用，改用C-c m来标记文本块  
(global-set-key "\C-cm" 'set-mark-command)
;;启用ibuffer支持，增强*buffer*  
;;(require 'ibuffer)  
;;(global-set-key (kbd "C-x C-b") 'ibuffer)  
(add-to-list 'load-path "~/Dropbox/.emacs.d/lisp/")
;;启动0.5秒后自动最大化 （windows下）  
(run-with-idle-timer 0.5 nil 'w32-send-sys-command 61488) 

