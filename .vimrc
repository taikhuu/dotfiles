" TODO:
" |- refactor this file
" |- add useful leader mappings
" |- make it portable (themes and so on..)
" '- keep it simple

" folding.. should probably already remove these
set foldmethod=marker
map <space> za

" syntax highlighting
syntax on
set t_Co=256
colorscheme desert

" basic settins
set encoding=utf8
set ffs=unix,dos,mac
set ruler
set autoread
set nocompatible
set history=700

" scroll offset
set scrolloff=8

" split the right way
set splitbelow
set splitright

" improve searching
set hlsearch
set incsearch
set showmatch
set mat=2

" disable annoying swap file
set nobackup
set nowb
set noswapfile

" allow backspace to remove everything
set backspace=indent,eol,start

" use proper tabs
set expandtab
set tabstop=4
set shiftwidth=4

" indentation, wrap
set ai
set si
set wrap

" mark the leader
nnoremap <space> <NOP>
let mapleader = " "

" source .vimrc
nnoremap <leader>s :source $MYVIMRC<Cr>

" <C-w> sucks
nnoremap <leader>w <C-w>

" jump between buffers
nnoremap <Leader>1 :buf 1<CR>
nnoremap <Leader>2 :buf 2<CR>
nnoremap <Leader>3 :buf 3<CR>
nnoremap <Leader>4 :buf 4<CR>
nnoremap <Leader>5 :buf 5<CR>
nnoremap <Leader>6 :buf 6<CR>
nnoremap <Leader>7 :buf 7<CR>
nnoremap <Leader>8 :buf 8<CR>
nnoremap <Leader>9 :buf 9<CR>
nnoremap <Leader>0 :buf 10<CR>

" upper and lower case word
nnoremap <leader>u viwu
nnoremap <leader>U viwU

" surround word with parenthesis, brackets, quotation marks..
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel

" force hjkl
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" easier navigation
nnoremap H 0
nnoremap L $
nnoremap J <C-d>
nnoremap K <C-u>

" mark too long lines
:au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%81v', -1)
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)

" god I hate these
set listchars=tab:>~,nbsp:_,trail:.
set list

" sig files are cpp
au BufRead,BufNewFile *.sig set filetype=cpp