set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin list
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
"Plugin 'bling/vim-bufferline'
Plugin 'edkolev/promptline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-rails'
Plugin 'vitalk/vim-simple-todo'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'matze/vim-move'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" plugin config 

" airline
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1

" promptline
let g:promptline_preset = {
        \'b' : [ promptline#slices#cwd() ],
        \'c' : [ promptline#slices#jobs() ],
        \'z' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code(), promptline#slices#battery() ]}
let g:promptline_theme = 'airline'

" nerdtree
map <F7> :NERDTreeToggle<CR>
"map <F7> :NERDTree<cr><c-w>p

" simple-todo
let g:simple_todo_map_keys = 0
nmap ;i <Plug>(simple-todo-new)
nmap ;o <Plug>(simple-todo-below)
nmap ;x <Plug>(simple-todo-mark-as-done)
nmap ;<Space> <Plug>(simple-todo-mark-as-undone)

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
	    let g:neocomplete#keyword_patterns = {}
		endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
			return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" vim-move
let g:move_key_modifier = 'C'

" vim-colors-solarized
call togglebg#map("<F5>")

" general config
set t_Co=256 
syntax on
syntax enable
set background=light
colorscheme solarized
set hidden
set number
set tabstop=2
set shiftwidth=2
set autoindent
set cindent shiftwidth=2 
set smartindent
set mouse=a
set cursorline 
filetype indent on
filetype plugin on
filetype plugin indent on
set clipboard=unnamedplus

" shortcut config
imap jj <Esc>
nnoremap <Space> :
map <TAB> >
map	<S-TAB> <
vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
