;;
;; el-get
;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get") 
(unless (require 'el-get nil t) 
  (url-retrieve "https://raw.github.com/dimitri/el-get/master/el-get-install.el" 
		(lambda (s) 
      (end-of-buffer)
      (eval-print-last-sexp))))

(setq 
 el-get-sources 
 '(el-get
   evil
   scala-mode
   python-mode
   ipython
   js2-mode
   ruby-mode
   haskell-mode))

(el-get 'sync el-get-sources)

;;
;; Actually use viper, though
;;
(setq viper-mode t)
(require 'viper)
(setq viper-expert-level 4)

;;
;; No asking about checking out files for SVN, Hg, and git.
;;
(defadvice 
  viper-maybe-checkout 
  (around viper-checkin-fix activate)
  (let ((file (expand-file-name (buffer-file-name buf))))
    (when (and (featurep 'vc-hooks)
	       (not (memq (vc-backend file) '(nil SVN)))
	       (not (memq (vc-backend file) '(nil Hg)))
	       (not (memq (vc-backend file) '(nil Git))))
      ad-do-it)))
