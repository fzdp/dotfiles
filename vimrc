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
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'tpope/vim-rails'
"Plugin 'vitalk/vim-simple-todo'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'matze/vim-move'
"Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

" plugin config
" pressing f will be a little slower
"let mapleader='f'

" airline
let g:airline_powerline_fonts = 1
set laststatus=2
set noshowmode
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0

" promptline
let g:promptline_preset = {
        \'b' : [ promptline#slices#cwd() ],
        \'c' : [ promptline#slices#jobs() ],
        \'z' : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code(), promptline#slices#battery() ]}
let g:promptline_theme = 'airline'

" nerdtree <tree>
map <leader>t :NERDTreeToggle<CR>

" simple-todo
let g:simple_todo_map_keys = 0
nmap ;i <Plug>(simple-todo-new)
nmap ;o <Plug>(simple-todo-below)
nmap ;x <Plug>(simple-todo-mark-as-done)
nmap ;<Space> <Plug>(simple-todo-mark-as-undone)

" vim-move
let g:move_key_modifier = 'C'

" vim-colors-solarized <background>
call togglebg#map("<leader>b")

" ctrlp <find>
let g:ctrlp_map = "<leader>f"

" general config
set t_Co=256
syntax on
syntax enable
set background=dark
colorscheme solarized
set hlsearch
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
"vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR>
"vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR>
" shift + j/k to switch buffer
nmap <silent> <S-j> :bp<CR>
nmap <silent> <S-k> :bn<CR>
" delete buffer
nmap <silent> <leader>d :bn\|bd #<CR>
" U = redo
nmap <S-u> <C-r>
" leader-s to save
noremap <silent> <leader>s  :update<CR>
vnoremap <silent> <leader>s  <C-C>:update<CR>gv
" inoremap <silent> <C-S> <C-O>:update<CR> to enable insert mode after saving
inoremap <silent> <leader>s  <Esc>:update<CR>
