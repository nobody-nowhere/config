let g:airline_powerline_fonts = 1
let g:airline_theme="ravenpower"

"" Easy-motion remap
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
let g:EasyMotion_space_jump_first = 1
" let g:EasyMotion_inc_highlight = 0

map <Space>f <Plug>(easymotion-f)
map <Space><Space> <Plug>(easymotion-s)
map <Space>s <Plug>(easymotion-s2)
map <Space>t <Plug>(easymotion-t)
map <Space>j <Plug>(easymotion-j)
map <Space>k <Plug>(easymotion-k)

" These `n` & `N` map[pings[ are options.] You] do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map / <Plug>(easymotion-sn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

" ale-specific
" let g:ale_linters = {'text': ['proselint'], 'cpp': ['clang'], 'c': ['clang'], 'vim': ['vint'], }
let airline#extensions#ale#error_symbol = '⨉ '
let airline#extensions#ale#warning_symbol = '⚠ '
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⨉ '
let g:ale_sign_warning = '⚠ '
let g:ale_lint_delay=1000
nmap <silent> <F4> <Plug>(ale_next_wrap)
nmap <silent> <F12> :ALEToggle<CR>

" Expand region plugin.
" call expand_region#custom_text_objects()
" vmap v <Plug>(expand_region_expand)
" vmap <C-v> <Plug>(expand_region_shrink)
" Chromatica
" let g:chromatica#enable_at_startup=1
" let g:chromatica#highlight_feature_level=1
" let g:chromatica#responsive_mode=1

let g:mp="make\ -r\ -f\ ./makefile\ \%.out"
autocmd! BufWritePost * execute ':NeomakeSh!' g:mp
autocmd User NeomakeFinished echo "Compiled"
let g:neomake_enabled_makers=[]

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 25
call deoplete#custom#set('neosnippet', 'rank', 1000)
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
autocmd CompleteDone * pclose " To close preview window of deoplete automagically
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function() abort
	return deoplete#close_popup() . "\<CR>"
endfunction

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
" let g:neotags#cpp#order = 'cedfm'
" let g:neotags#c#order = 'cedfm'
" let g:neotags_enabled = 1

" highlight link cTypeTag Special
" highlight link cppTypeTag Special
" highlight link cEnumTag Identifier
" highlight link cppEnumTag Identifier
" highlight link cPreProcTag PreProc
" highlight link cppPreProcTag PreProc

" FastFold Plugin
let g:fastfold_savehook = 0
let g:xml_syntax_folding = 1
let g:c = 1
let g:cpp = 1
let g:fastfold_fold_command_suffixes = []
