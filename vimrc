
" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
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
set guifont=Source\ Code\ Pro\ 10
set nrformats=

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79
call pathogen#infect()
nmap <silent> <C-D> :NERDTreeToggle<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" from Practical Vim "Create Mappings to Quickly Traverse Vim's Lists
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext    <CR>
nnoremap <silent> [B :bfirst   <CR>
nnoremap <silent> ]B :blast    <CR>
