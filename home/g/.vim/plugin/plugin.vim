colorscheme molokai

let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

set laststatus=2

let g:bufferline_echo=0
let g:airline_theme="simple"

let g:molokai_original = 1
let g:rehash256 = 1


if $TERM=='linux'
	set t_Co=16
	let g:airline_theme="molokai"
endif

"set cmdheight=0
"set cmdwinheight=0
"if !exists('g:airlne_symbols')
	"let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"
"let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Plugin specific mappings

" Expand region plugin.
call expand_region#custom_text_objects()
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Nerd commenter remap
" map [count]<Leader>cc <plug>NERDCommenterToggle

" Easy-motion remap
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_space_jump_first = 1

map <Leader>f <Plug>(easymotion-s)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" These `n` & `N` map[pings[ are options.] You] do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map / <Plug>(easymotion-sn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
