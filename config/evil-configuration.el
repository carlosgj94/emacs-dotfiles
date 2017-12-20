(require 'evil)
(require 'evil-leader)

(evil-mode t)
(global-evil-leader-mode)

;;Exit insert mode by pressing j and then j quickly
(setq key-chord-two-keys-delay 0.6)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-visual-state-map "jk" 'evil-normal-state)
(key-chord-mode 1)

(evil-leader/set-leader "<SPC>")

(provide 'evil-configuration)
