" vim fullscreen mode
" load using: `mvim -S ~/.vim/fullscreen.vim`

set background=dark
set guifont=Monaco:h17
set guioptions=egmLtT
set lines=30 columns=80

" `fullscreen` needs to go after `lines` etc
set fuoptions=
set fullscreen

highlight clear
highlight Normal     guifg=#00a000      guibg=Black
highlight NonText    guifg=#002000
highlight Search     guifg=Black        guibg=#606000   gui=bold
highlight Visual     guifg=#404040                      gui=bold
highlight Cursor     guifg=Black        guibg=Green     gui=bold
highlight Special    guifg=#004000
highlight Comment    guifg=#008000
highlight StatusLine guifg=blue         guibg=white
highlight Statement  guifg=#004000                      gui=NONE
highlight constant   guifg=#005000                      gui=NONE
highlight preproc    guifg=#005000                      gui=NONE
highlight Type                                          gui=NONE
