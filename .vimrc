" PLUGINS
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-easy-align'
  Plug 'tpope/vim-markdown'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
call plug#end()
" CONFIG
noh
syntax on
set termguicolors
set nocompatible
set showcmd
set ruler
set number relativenumber
" set cursorline
" set cursorcolumn
set expandtab
set mouse=a
set noshiftround
set lazyredraw
set magic
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set modelines=0
set formatoptions=tqn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set laststatus=2
set backspace=indent,eol,start
set list
set listchars=tab:\│\ 
set matchpairs+=<:>
set statusline=%1*\ file\ %3*\ %f\ %4*\ 
set statusline+=%=\ 
set statusline+=%3*\ %c\:\%l\/\%L\ %2*\ line\ 
set scrolloff=8
" MAPPING
imap <F3> <Esc>:set invnumber<CR>a
let mapleader=' '
cmap w!! w !sudo tee > /dev/null %
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>
nnoremap <leader>q :wq<CR>
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W
nnoremap <C-s> :%s//gI<Left><Left><Left>
nmap <leader>w :w<CR> 
nma:p <C-_> :noh<CR>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
nmap <C-Up> 8k
nmap <C-Down> 8j
nmap <C-O> o<Esc>
nmap <C-Z> u
nmap <C-Y> <C-R>
nmap <C-F> /
nmap <C-H> i<C-W><Esc>
nmap <F4> :wq<CR>
nmap ga <Plug>(EasyAlign)
imap <C-G> <Esc>:w<CR>a
imap <C-_> <Esc>:noh<CR>a
imap <S-Left> <Esc>lv<Left>
imap <S-Right> <Esc>lv<Right>
imap <C-Up> <Esc>8ka
imap <C-Down> <Esc>8ja
imap <C-O> <Esc>o
imap <C-Z> <Esc>ua
imap <C-Y> <Esc><C-R>a
imap <Nul> <C-N>
imap <C-F> <Esc>/
imap <C-H> <C-W>
imap <C-V> <Esc>pa
imap <F4> <Esc>:wq<CR>
xmap ga <Plug>(EasyAlign)
vmap <C-Up> 8k
vmap <C-Down> 8j
" HILIGHTING
hi linenr ctermfg=8
hi cursorline cterm=NONE
hi cursorlinenr ctermfg=15
hi comment ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=0
hi statusline ctermbg=0 ctermfg=NONE
hi statuslinenc ctermbg=0 ctermfg=0
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
autocmd colorscheme * hi clear cursorline
match group1 /\t/

let g:Hexokinase_refreshEvents=[ 'TextChanged' ]
let g:Hexokinase_highlighters = [ 'backgroundfull' ]
