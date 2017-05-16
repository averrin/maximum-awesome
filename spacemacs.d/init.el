;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unusedactual chrome version' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     shell
     syntax-checking
     dart
     javascript
     markdown
     yaml
     html
     lua
     go
     helm
     auto-completion
     better-defaults
     emacs-lisp
     (git :variables
          magit-save-repository-buffers 'dontask)
     org
     emoji
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
      bookmark+
      evil-goggles
      editorconfig
      hlinum
      swiper
      counsel
      base16-theme
      dired+
      diff-hl
      git-link
    )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(base16-gruvbox-dark-medium-theme)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')

   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update 'develop
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((projects . 7)
                                (bookmarks . 5)
                                (recents . 5)
                                )
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light) base16-gruvbox-dark-medium
   dotspacemacs-themes '(base16-gruvbox-dark-medium)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("FiraCode"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1)
   ;; dotspacemacs-default-font '("Source Code Pro"
   ;;                             :size 13
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1)
   ;; ;; The leader key
   ;; dotspacemacs-leader-key "C-a"
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
  dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'original
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.2
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (load-file "~/.spacemacs.d/dired.el")
  (load-file "~/.spacemacs.d/evil.el")

  (setq exec-path-from-shell-check-startup-files nil)
  (setq exec-path-from-shell-arguments '("-l"))
  (setq use-dialog-box nil)

  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (averrin/dired-init)
  )

(defun save-all ()
  "Save hook"
  (interactive)
  (save-some-buffers t))

(defun open-task ()
  "Open current task"
  (interactive)
  (shell-command "task")
  )

(defun dotspacemacs/user-config ()
  (require 'helm)

  (display-time-mode 1)
  (global-company-mode t)
  (spacemacs/toggle-mode-line-minor-modes-off)
  (spacemacs/toggle-centered-point-globally-on)
  (spaceline-toggle-buffer-size-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (global-diff-hl-mode)
  (global-auto-revert-mode t)
  (diff-hl-flydiff-mode t)
  (setq tab-width 4)
  (setq web-mode-markup-indent-offset 2)
  (setq frame-title-format "e > %b")
  (setq display-time-24hr-format t)
  (setq word-wrap t)
  (setq dotspacemacs-large-file-size 3)
  (setq helm-follow-mode-persistent 1)
  (setq bmkp-auto-light-when-set 'autonamed-bookmark)
  (global-linum-mode)
  (hlinum-activate)
  (editorconfig-mode 1)

  (global-set-key (kbd "C-j") (kbd "RET"))
  (define-key helm-map (kbd "C-j") 'helm-confirm-and-exit-minibuffer)


  (spacemacs/set-leader-keys
    "l" 'avy-goto-line
    "j" 'avy-goto-word-or-subword-1
    "gc" 'magit-commit
    "gp" 'magit-push-current-to-upstream
    "gd" 'magit-diff-working-tree
    "gg" 'git-link
    "y" 'open-task
    "pi" 'projectile-project-info
    "ff" 'font-lock-fontify-buffer)

  (add-hook 'focus-out-hook 'save-all)
  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'term-mode-hook 'spacemacs/toggle-centered-point-off)
  ;; (add-hook 'kill-buffer-hook 'bmkp-delete-all-autonamed-for-this-buffer)
  (add-hook 'kill-emacs-hook  'bmkp-delete-autonamed-no-confirm)

  (eval-after-load "git-link"
    '(progn
       (add-to-list 'git-link-remote-alist
                    '("git.wrke.in" git-link-gitlab))
       (add-to-list 'git-link-commit-remote-alist
                    '("git.wrke.in" git-link-gitlab))))

  (global-unset-key (kbd "M-<down-mouse-1>"))
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

  (averrin/evil-config)
  (averrin/dired-config)

  (setq dartfmt-args (quote ("-l 100")))
  (message "Spacemacs user-config finished")
)


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (pophint bookmark+ evil-goggles ivy editorconfig hlinum xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help counsel swiper gruvbox-theme symon string-inflection go-rename company-dart dart-mode helm-dart ace-jump-mode noflet elfeed-goodies elfeed yaml-mode web-mode web-beautify unfill tagedit smeargle slim-mode scss-mode sass-mode pug-mode orgit org-projectile org-present org-pomodoro alert log4e gntp org-download nlinum mwim mmm-mode markdown-toc markdown-mode magit-gitflow lua-mode livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc htmlize helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode go-guru go-eldoc gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy flycheck-pos-tip evil-magit magit magit-popup git-commit with-editor emoji-cheat-sheet-plus emmet-mode doom-themes all-the-icons font-lock+ dired+ diff-hl company-web web-completion-data company-tern dash-functional tern company-statistics company-go go-mode company-emoji pos-tip flycheck company coffee-mode base16-theme auto-yasnippet yasnippet ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav dumb-jump f s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-directory ((((class color) (min-colors 89)) (:foreground "#ef2929" :bold t))))
 '(dired-flagged ((((class color) (min-colors 89)) (:foreground "#ef2929"))))
 '(dired-header ((((class color) (min-colors 89)) (:foreground "#303030" :background "#a1db00" :bold t))))
 '(dired-ignored ((((class color) (min-colors 89)) (:foreground "#a8a8a8"))))
 '(dired-mark ((((class color) (min-colors 89)) (:foreground "#afff00"))))
 '(dired-marked ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(dired-perm-write ((((class color) (min-colors 89)) (:foreground "#dd0000" :bold t))))
 '(dired-symlink ((((class color) (min-colors 89)) (:foreground "#ff4ea3"))))
 '(dired-warning ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#a40000" :bold t))))
 '(diredp-compressed-file-suffix ((((class color) (min-colors 89)) (:foreground "#af5fff"))))
 '(diredp-date-time ((((class color) (min-colors 89)) (:foreground "#84edb9" :background "#3a3a3a"))))
 '(diredp-deletion ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#a40000"))))
 '(diredp-deletion-file-name ((((class color) (min-colors 89)) (:foreground "#dd0000"))))
 '(diredp-dir-heading ((((class color) (min-colors 89)) (:foreground "#a1db00" :bold t))))
 '(diredp-dir-name ((((class color) (min-colors 89)) (:foreground "#c4a000" :bold t))))
 '(diredp-dir-priv ((((class color) (min-colors 89)) (:foreground "#ff8700" :bold t))))
 '(diredp-display-msg ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(diredp-exec-priv ((((class color) (min-colors 89)) (:foreground "#dd0000"))))
 '(diredp-executable-tag ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(diredp-file-name ((((class color) (min-colors 89)) (:foreground "#c6c6c6"))))
 '(diredp-file-suffix ((((class color) (min-colors 89)) (:foreground "#ff8700"))))
 '(diredp-flag-mark ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#ff1f8b" :bold t))))
 '(diredp-flag-mark-line ((((class color) (min-colors 89)) (:foreground "#303030" :background "#ff7bbb"))))
 '(diredp-ignored-file-name ((((class color) (min-colors 89)) (:foreground "#8a8a8a"))))
 '(diredp-link-priv ((((class color) (min-colors 89)) (:foreground "#ff1f8b"))))
 '(diredp-mode-line-flagged ((((class color) (min-colors 89)) (:foreground "#303030" :background "#a1db00"))))
 '(diredp-mode-line-marked ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#ff1f8b" bold t))))
 '(diredp-no-priv ((((class color) (min-colors 89)) (:foreground "#c6c6c6" :background "#3a3a3a"))))
 '(diredp-number ((((class color) (min-colors 89)) (:foreground "#fce94f"))))
 '(diredp-other-priv ((((class color) (min-colors 89)) (:foreground "#c6c6c6"))))
 '(diredp-rare-priv ((((class color) (min-colors 89)) (:foreground "#c6c6c6"))))
 '(diredp-read-priv ((((class color) (min-colors 89)) (:foreground "#a1db00"))))
 '(diredp-symlink ((((class color) (min-colors 89)) (:foreground "#ff1f8b"))))
 '(diredp-write-priv ((((class color) (min-colors 89)) (:foreground "#1f5bff")))))
)
