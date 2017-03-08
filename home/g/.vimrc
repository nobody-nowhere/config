source ~/.vim/plugin/vundle.vim
"set nocompatible			  " be iMproved, required
"filetype off				  " required

"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required

"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'easymotion/vim-easymotion'
"Plugin 'terryma/vim-expand-region'
"Plugin 'tomasr/molokai'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
"Plugin 'tmhedberg/matchit'
"Plugin 'tpope/vim-surround'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"" Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
"" Git plugin not hosted on GitHub
"" Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"" Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

"" All of your Plugins must be added before the following line
"call vundle#end()			  " required
"filetype plugin indent on	  " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on

" Normally we use vim-extensions. If you want true vi-compatibility
"" remove change the following statements
set backspace=indent,eol,start	" more powerful backspacing
set cindent

colorscheme torte

" Now we set some defaults for the editor
set history=50					" keep 50 lines of command line history
set ruler						" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=10	" wait up to 100ms after Esc for special key

"set noshowmode
set ts=4
set shiftwidth=4
"set lazyredraw
set nu
set scrolloff=5
set t_Co=256

syntax on
" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
if has('mouse')
	set mouse=a
endif

" Do incremental searching when it's possible to timeout.
if has('reltime')
	set incsearch
	set hlsearch
endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
" Revert with ":syntax off".
	syntax on
" I like highlighting strings inside C comments.
" Revert with ":unlet c_comment_strings".
	let c_comment_strings=1
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	" Revert with ":filetype off".
	filetype plugin indent on
	" Put these in an autocmd group, so that you can revert them with:
	" ":augroup vimStartup | au! | augroup END"
	augroup vimStartup
	au!

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
		\ if line("'\"") >= 1 && line("'\"") <= line("$") |
		\   exe "normal! g`\"" |
		\ endif
	augroup END
endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		\ | wincmd p | diffthis
endif

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

if has('gui_running')
" Make shift-insert work like in Xterm
	map <S-Insert> <MiddleMouse>
	map! <S-Insert> <MiddleMouse>
endif

" KEY MAPPINGS
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" SPACE IS THE LEADER!
map <Space> <Leader>

"map <Space>w <C-w>
map <Leader>o @o
map <Leader>p @p
map <Leader>i @i

" Quick copy-paste
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
vmap r "_dP
vmap <Leader>r "_d"+P

" Don't use Ex mode, use Q to quit
" Revert with ":unmap Q", ":unmap q:"
map Q <NOP>
map <expr> <Leader>q &mod ? ':q!' : ':q<CR>'
"map q: :q<CR>

map <Leader>` :w<CR>
map <Leader>w <C-w>
map <Leader>d :w<CR>:sh<CR>

map ' `

map <Leader><C-j> $x

" CTRL-U in insert mode deletes a lot.	Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

"colorscheme molokai

"let g:airline_powerline_fonts = 1
"let g:airline_skip_empty_sections = 1

"set laststatus=2

"let g:bufferline_echo=0
"let g:airline_theme="simple"

"let g:molokai_original = 1
"let g:rehash256 = 1


"if $TERM=='linux'
	"set t_Co=16
	"let g:airline_theme="molokai"
"endif

""set cmdheight=0
""set cmdwinheight=0
""if !exists('g:airlne_symbols')
	""let g:airline_symbols = {}
""endif
""let g:airline_symbols.space = "\ua0"
""let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

"" Plugin specific mappings

"" Expand region plugin.
"call expand_region#custom_text_objects()
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)

"" Nerd commenter remap
"" map [count]<Leader>cc <plug>NERDCommenterToggle

"" Easy-motion remap
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_smartcase = 1

"map <Leader>f <Plug>(easymotion-f)
"map <Leader>j <Plug>(easymotion-j)
"map <Leader>k <Plug>(easymotion-k)

"" These `n` & `N` map[pings[ are options.] You] do not have to map `n` & `N` to EasyMotion.
"" Without these mappings, `n` & `N` works fine. (These mappings just provide
"" different highlight method and have some other features )
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)
