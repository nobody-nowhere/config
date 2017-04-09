source ~/.config/nvim/plug.vim
source ~/.config/nvim/plugs.vim

set cindent

" Now we set some defaults for the editor
set history=50					" keep 50 lines of command line history
" set ruler						" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line
set complete-=1
" set shada=""
set undofile
set undodir=~/.local/share/nvim/undo
tnoremap <C-w> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Protect large files from sourcing and other overhead.
if !exists("my_auto_commands_loaded")
	let my_auto_commands_loaded = 1

	" eventignore+=FileType (no syntax highlighting etc
	" assumes FileType always on)
	" noswapfile (save copy of file)
	" bufhidden=unload (save memory when other file is viewed)
	" buftype=nowrite (file is read-only)
	" undolevels=-1 (no undo possible)
	let g:LargeFile = 1024 * 1024 * 20
	augroup LargeFile
		autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload undolevels=-1 | else | set eventignore-=FileType | endif
	augroup END
endif

set timeout		" time out for key codes
set timeoutlen=2000
" set cursorline

"set noshowmode
set ts=4
set shiftwidth=4
set softtabstop=4
set lazyredraw
" set rnu
" set nuw=3
set scrolloff=4

" set title
set regexpengine=1

" syntax on

" In many terminal emulators the mouse works just fine.  By enabling it you
" can position the cursor, Visually select and scroll with the mouse.
set mouse=a

" Do incremental searching when it's possible to timeout
if has('reltime')
	set incsearch
	set hlsearch
endif

" I like highlighting strings inside C comments.
" Revert with ":unlet c_comment_strings".
let c_comment_strings=1

augroup vimStartup
	au!

	" Also load indent files, to automatically do language-dependent indenting.
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") |   exe "normal! g`\"" | endif
augroup END

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
	command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
endif

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd FileType cpp set keywordprg=:Term\ cppman
" autocmd TermOpen * setlocal laststatus=0

if has('gui_running')
" Make shift-insert work like in Xterm
	map <S-Insert> <MiddleMouse>
	map! <S-Insert> <MiddleMouse>
endif

" KEY MAPPINGS
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Force write! If you're not logged in as sudo
cmap fw w !sudo tee % >/dev/null

nnoremap j gj
nnoremap k gk

" SPACE IS THE LEADER!
map <Space> <Leader>
map <Space>o @o
map <Space>p @p
map <Space>i @i

" Quick copy-paste
vmap <Space>y "+y
vmap <Space>Y "+Y
vmap <Space>d "+d
nmap <Space>p "+p
nmap <Space>P "+P
vmap <Space>p "+p
vmap <Space>P "+P
" vmap r "_dP
" vmap <Space>r "_d"+P

" Don't use Ex mode, use Q to quit
" Revert with ":unmap Q", ":unmap q:"
map Q <NOP>
map <F1> <NOP>
map <expr> <Space>q &mod ? ':q!' : ':q<CR>'
"map q: :q<CR>

map <Space>` :w<CR>
map <Space>w <C-w>
map <Space>d :w<CR>:terminal<CR>
map <F5> :w<CR>:Neomake!<CR>
map <F6> :botright<Space>vspl<CR>:terminal<Space>gdb<Space>./%.out<CR>
map <F9> :botright<Space>vspl<CR>:terminal<Space>./%.out<CR>
nnoremap <CR> <NOP>

noremap ' `
map ` <ESC>

map <Leader><C-j> $x

" CTRL-U in insert mode deletes a lot.	Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

source ~/.config/nvim/interface.vim
