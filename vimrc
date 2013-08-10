runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

set nocompatible      		" We're running Vim, not Vi!
filetype plugin indent on	" Turn on file type detection.
syntax on			" Turn on syntax highlighting.

" set t_Co=256
colorscheme sexy-railscasts-256
" colorscheme wombat256mod
" color codeschool

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
 
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set hlsearch		" highlights all search results
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

" set background=dark  When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set wildignore+=*.o,*.obj,.git,.svn,tmp,doc,*.orig,*.png,*.jpg,*.jpeg,*.log,*.mp3

set backupdir=~/.vim/backup,/tmp

let g:ackprg="ack -H --nocolor --nogroup --column"

set wildmenu			" Enhanced command line completion.
set wildmode=list:longest	" Complete files like a shell.

" Automatic fold settings for specific files. Uncomment to use.
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd FileType scss  setlocal foldmethod=indent shiftwidth=2 tabstop=2
autocmd FileType js setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

autocmd FileType c  setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp  setlocal shiftwidth=2 tabstop=2

" To get standard two-space indentation in CoffeeScript files
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" CtrlP
let g:ctrlp_map = '<c-e>'
let g:ctrlpmru_map = '<s-e>'
map <S-e> :CtrlPMRU<cr>

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
