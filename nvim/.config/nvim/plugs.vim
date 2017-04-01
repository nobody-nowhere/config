call plug#begin('~/.config/nvim/plugins')

	" Plug 'arakashic/chromatica.nvim'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-clang'
	let g:ale_emit_conflict_warnings = 0
	Plug 'w0rp/ale'
	Plug 'neomake/neomake'
	Plug 'sheerun/vim-polyglot'
	" Plug 'c0r73x/neotags.nvim'
	" Plug 'jsfaint/gen_tags.vim' 

	Plug 'easymotion/vim-easymotion'

	Plug 'junegunn/vim-easy-align'
	Plug 'tpope/vim-commentary'

	Plug 'vim-airline/vim-airline'

	Plug 'vim-airline/vim-airline-themes'
	" Plug 'chriskempson/base16-vim'
	" Plug 'MaxSt/FlatColor'
	" Plug 'mhinz/vim-janah'
	Plug 'joshdick/onedark.vim'

call plug#end()
source ~/.config/nvim/plugin.vim
