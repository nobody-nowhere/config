colorscheme industry

set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 11
set t_Co=256
let g:airline_theme="term"

"set noguipty
set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Only do this for Vim version 5.0 and later.
if version >= 500
  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif
endif

set go-=M
set go-=m
set go-=L
set go-=r
set go-=T
