syntax on

" Standard settings
let mapleader=","

" Backups
set backupdir=~/.vim-tmp    " Moves vim backup files into ~/.vim-tmp

" Tabs and indentation
set tabstop=4               " Number of visual spaces for tab
set softtabstop=4           " Number of spaces in tab when editing
set expandtab               " Tabs are converted to spaces
set shiftwidth=4            " Used for autoindentation
set autoindent
filetype indent on          " Load filetype specific indent files (not configured yet)

" Display settings
set number                  " Displays line numbers
set showcmd                 " Shows the command entered in the bottom bar
set ruler                   " Displays current position
set wildmenu                " Brings up a menu for options when using <TAB> in command mode

" Text wrapping
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Searching and highlighting
set showmatch               " Highlights matching [{()}]
set showmode                " For current mode displayed at bottom

set incsearch               " Search as characters are entered
set hlsearch                " Highlights matches

" Remappings
" Turn off search highlight (get this working because it is useful)
nnoremap <leader><space> :nohlsearch<CR>
" Can use TAB to jump between parentheses
nnoremap <tab> %
vnoremap <tab> %
" Maps ; to : to save pressing shift when saving
nnoremap ; :
" Deletes all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Jump out of insert mode using jj instead of <ESC>
inoremap jj <ESC> 

" Scrolling
if has('mouse')              " Enables mouse scrolling
  set mouse=a
endif
set ttyfast                 " Enables fast scrolling

" Folding
set foldmethod=marker

" For latex files
autocmd Filetype tex setlocal tw=79
autocmd Filetype tex setlocal softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype tex setlocal wrap linebreak breakindent
autocmd Filetype tex setlocal spell

set listchars=tab:>>,trail:.,nbsp:~
set list

" For markdown files
autocmd Filetype md setlocal tw=79
autocmd Filetype md setlocal softtabstop=2 shiftwidth=2 expandtab
autocmd Filetype md setlocal wrap linebreak breakindent
autocmd Filetype md setlocal spell

" solarized
syntax enable
set background=dark
colorscheme solarized
