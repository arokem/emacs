;; http://www.emacswiki.org/emacs/ExecPath
;; http://xahlee.org/emacs/emacs_env_var_paths.html
(setq py-version-no "2.6")
(setenv "PYTHONPATH"
        (concat (getenv "HOME")
                "/usr/local/lib/python"
                py-version-no
                "/site-packages"))
;; Where python is
(setq py-exec-path (concat
                   "/Library/Frameworks/Python.framework/Versions/"
                   py-version-no
                   "/bin"))
(setq exec-path (cons py-exec-path exec-path))
