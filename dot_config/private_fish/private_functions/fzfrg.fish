function fzfrg --description "search using rg, fzf and bat"
    rg --with-filename --line-number --color always --smart-case --hidden --max-filesize 100K "$argv" |
        fzf --delimiter ':' --no-sort --exact \
            --preview "bat --number --color always --highlight-line {2} {1}" \
            --preview-window 'right:+{2}-10' \
            --bind 'enter:become(vim +{2} {1}),ctrl-/:change-preview-window(hidden|)'
end
