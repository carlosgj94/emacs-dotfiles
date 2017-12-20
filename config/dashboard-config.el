(require 'dashboard)
(dashboard-setup-startup-hook)
;; Or if you use use-package
(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(provide 'dashboard-config)
