scriptencoding utf-8
set encoding=utf-8

let mapleader=";"         " The <leader> key
set backspace=2           " Makes backspace not behave all retarded-like
set ruler                 " Show the line number and column in the status bar
set laststatus=2          " Always show the status bar
set list                  " Show invisible characters
set listchars=tab:›\ ,eol:¬,trail:⋅ "Set the characters for the invisibles
set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default
set title                 " Set the title for gvim
set showbreak=↪           " The character to put to show a line has been wrapped

syntax on                 " Enable filetype detection by syntax

" Search settings
set hlsearch   " Highlight results
set ignorecase " Ignore casing of searches
set incsearch  " Start showing results as you type
set smartcase  " Be smart about case sensitivity when searching

set expandtab     " Expand tabs to the proper type and size
set tabstop=4     " Tabs width in spaces
set softtabstop=4 " Soft tab width in spaces
set shiftwidth=4  " Amount of spaces when shifting

colorscheme molokai
set guioptions=cegmt

inoremap jj <esc>
inoremap jJ <esc>
inoremap Jj <esc>
inoremap JJ <esc>
inoremap jk <esc>
inoremap jK <esc>
inoremap Jk <esc>
inoremap JK <esc>

map j gj
map k gk

nmap <leader>cd :cd %:h<CR>
nmap <leader>lcd :lcd %:h<CR>

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>y "*y
map <leader>p "*p

" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e

let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall



let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|Godeps)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pyc)$',
  \}

let g:ctrlp_working_path_mode = 'r'

