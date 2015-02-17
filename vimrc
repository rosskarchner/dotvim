
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
set ignorecase smartcase

"============================================================================
" Make delete key in Normal mode remove the persistently highlighted matches
" Source: Mastering Vim (Conway)
"============================================================================

    nmap <silent>  <BS>  :nohlsearch<CR>

syntax on
set foldmethod=syntax

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

nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <C-F5> :SyntasticCheck<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

set encoding=utf-8

set laststatus=2
if has('gui_running')
    set background=light
else
    set background=dark
endif

colorscheme solarized

highlight ColorColumn ctermbg=magenta
set colorcolumn=81
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


"============================================================================
" Make :help appear in a full-screen tab, instead of a window
" Source: Mastering Vim (Conway)
"============================================================================

    "Only apply to .txt files...
    augroup HelpInTabs
        autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
    augroup END

    "Only apply to help files...
    function! HelpInNewTab ()
        if &buftype == 'help'
            "Convert the help window to a tab...
            execute "normal \<C-W>T"
        endif
    endfunction
    
"============================================================================
" Set up persistent undo (with all undo files in one directory)
" Source: Mastering Vim (Conway)
"============================================================================

    if has('persistent_undo')
        set undofile
    endif

    set undodir=$HOME/.VIM_UNDO_FILES

    set undolevels=5000
