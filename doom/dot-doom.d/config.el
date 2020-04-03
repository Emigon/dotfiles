;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Daniel Parker"
      user-mail-address "danielparker@live.com.au")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 16))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(setq doom-theme 'doom-one)

;; If you intend to use org, it is recommended you change this!
(setq org-directory "~/Dropbox/org/")

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.


;; python
(when (executable-find "ipython")
  (setq python-shell-interpreter "ipython"))

;; mu4e
(setq mu4e-get-mail-command "mbsync -a")

(set-email-account! "saluda"
  '((mu4e-sent-folder       . "/saluda/Sent Items")
    (mu4e-drafts-folder     . "/saluda/Drafts")
    (mu4e-trash-folder      . "/saluda/Deleted Items")
    (mu4e-refile-folder     . "/saluda/Archive")
    (smtpmail-smtp-server   . "smtp.office365.com")
    (smtpmail-smtp-user     . "daniel.parker@saludamedical.com")
    (user-mail-address      . "daniel.parker@saludamedical.com"))
  t)

(set-email-account! "unsw"
  '((mu4e-sent-folder       . "/unsw/Sent Items")
    (mu4e-drafts-folder     . "/unsw/Drafts")
    (mu4e-trash-folder      . "/unsw/Deleted Items")
    (mu4e-refile-folder     . "/unsw/Archive")
    (smtpmail-smtp-server   . "smtp.office365.com")
    (smtpmail-smtp-user     . "z3466223@ad.unsw.edu.au")
    (user-mail-address      . "z3466223@ad.unsw.edu.au"))
  t)

; define the default last
(set-email-account! "personal"
  '((mu4e-sent-folder       . "/personal/Sent")
    (mu4e-drafts-folder     . "/personal/Drafts")
    (mu4e-trash-folder      . "/personal/Deleted")
    (mu4e-refile-folder     . "/personal/Archive")
    (smtpmail-smtp-server   . "smtp.office365.com")
    (smtpmail-smtp-user     . "danielparker@live.com.au")
    (user-mail-address      . "danielparker@live.com.au"))
  t)
