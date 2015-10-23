scriptencoding utf-8
set encoding=utf-8

let mapleader=';'         " The <leader> key
set backspace=2           " Makes backspace not behave all retarded-like
set ruler                 " Show the line number and column in the status bar
set laststatus=2          " Always show the status bar
set showmatch             " Highlight matching braces
set showmode              " Show the current mode on the open buffer
set showcmd
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default
set title                 " Set the title for gvim
set showbreak=↪           " The character to put to show a line has been wrapped
set number
let g:ctrlp_reuse_window  = 'startify'

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
set guifont=Inconsolata\ for\ Powerline:h14

inoremap jj <esc>
inoremap jJ <esc>
inoremap Jj <esc>
inoremap JJ <esc>
inoremap jk <esc>
inoremap jK <esc>
inoremap Jk <esc>
inoremap JK <esc>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map j gj
map k gk

nmap <leader>cd :cd %:h<CR>
nmap <leader>lcd :lcd %:h<CR>

map <leader>y "*y
map <leader>p "*p

nmap <leader>T :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e

let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall

let g:vim_json_syntax_conceal = 0

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|Godeps)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|pyc)$',
  \}

let g:ctrlp_working_path_mode = 'r'

let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['cpp', 'go', 'puppet'] }
