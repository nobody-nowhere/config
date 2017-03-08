set nocompatible			  " be iMproved, required
filetype off				  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-expand-region'
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-surround'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()			  " required
filetype plugin indent on	  " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
set noshowmode

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
"map <Leader>gg :sh
