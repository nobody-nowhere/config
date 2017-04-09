" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=2

set noshowmode

" set termguicolors
augroup interface
	autocmd ColorScheme onedark highlight Normal guibg=#090909 ctermbg=232
augroup END
colorscheme onedark
highlight Normal guibg=#090909 ctermbg=232
" set cursorline
" set background=dark
" highlight Normal ctermbg=0
