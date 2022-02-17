if status is-interactive
    # paths
    fish_add_path -m ~/.local/bin

    # abbrevations
    abbr b brew
    abbr c chezmoi
    abbr cg chezmoi git
    abbr f fzf
    abbr g git
    abbr p gopass
    abbr pr "pipenv run"
    abbr s ssh

    # bat & fzf
    set -gx BAT_THEME OneHalfLight
    set -gx FZF_CTRL_T_COMMAND "fd --type dir --color=always"
    set -gx FZF_DEFAULT_COMMAND "fd --type file --color=always"
    set -gx FZF_DEFAULT_OPTS "--ansi --height 50% --border --select-1"

    # fish fzf integration (uses universal vars)
    set -U FZF_COMPLETE 3
    set -U FZF_PREVIEW_DIR_CMD "gls -lF --color"
    set -U FZF_PREVIEW_FILE_CMD "bat --color always --number --wrap never"
    set -U FZF_DISABLE_KEYBINDINGS 0
    set -U FZF_LEGACY_KEYBINDINGS 1
    set -U FZF_TMUX_HEIGHT "40%"

    # misc
    set -gx LC_CTYPE en_US.UTF-8
    set -gx LESSOPEN "|/usr/local/bin/lesspipe.sh %s"
    set -gx LESS_ADVANCED_PREPROCESSOR 1
    set -gx HOMEBREW_NO_INSTALL_CLEANUP please_not
    set -gx PIPENV_CACHE_DIR ( pip3 cache dir )
end
