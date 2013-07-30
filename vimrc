
" disable arrow keys
map <up> :bprev<CR>
map <down> :bnext<CR>
map <left> :tabprevious<CR>
map <right> :tabnext<CR>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" enable the mouse
set mouse=a

" expand %% to current files directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'



set incsearch
set hlsearch
set smartcase
syntax on
set number
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces
set nowrap
set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
set nrformats=

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
call pathogen#infect()
autocmd BufWritePost *.py call Flake8()

nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <C-F5> :SyntasticCheck<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set laststatus=2
if has('gui_running')
    set background=light
else
    set background=dark
endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

nmap \l :setlocal number!<CR>
nmap \o :set paste!<CR>
nmap \w :set wrap!<CR>
nmap \t :tabnew<CR>

nmap <NL> :wincmd w<CR>
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

"ignore python noise
:set wildignore=*.pyc,*.pyo
