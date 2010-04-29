;; http://www.emacswiki.org/emacs/ExecPath
;; http://xahlee.org/emacs/emacs_env_var_paths.html
(setenv "PYTHONPATH" (concat (getenv "HOME") "/sp"))
(setq exec-path (append '("~/usr/local/bin") exec-path))
