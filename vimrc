runtime bundle/vim-pathogen/autoload/pathogen.vim

execute pathogen#infect()

set nocompatible      		" We're running Vim, not Vi!
filetype plugin indent on	" Turn on file type detection.
syntax on			" Turn on syntax highlighting.

" set t_Co=256
colorscheme sexy-railscasts-256
" colorscheme solarized
" let base16colorspace=256  " Access colors present in 256 colorspace
" colorscheme base16-default
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

set textwidth=80    " Maximum width of text that is being inserted. A longer
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

set background=dark  "When set to "dark", Vim will try to use colors that look
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
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType scss  setlocal foldmethod=indent shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType less  setlocal foldmethod=indent shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType xhtml setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

autocmd FileType c  setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp  setlocal shiftwidth=2 tabstop=2

" To get standard two-space indentation in CoffeeScript files
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.jsx setl shiftwidth=2 expandtab

au BufNewFile,BufRead *.prawn set filetype=ruby
au BufNewFile,BufRead *.axlsx set filetype=ruby
au BufNewFile,BufRead *.shaper set filetype=ruby

" CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlpmru_map = '<s-f>'
map <c-e> :Errors<cr>
map <S-f> :CtrlPMRU<cr>

" folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space
" recommended by vim-less plugin
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>
" imap <C-J> <Plug>snipMateNextOrTrigger

" SnipMate
let g:snipMate = {}
let g:snipMate.snippet_version=1

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='powerlineish'
let g:airline#extensions#branch#enabled=1
" let g:airline#extensions#ctrlp#color_template='visual' " insert (default), normal, visual, replace

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
"
" let g:syntastic_error_symbol = '❌'
" let g:syntastic_warning_symbol = '‼'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_style_warning_symbol = '💩'
"
" let g:syntastic_haml_checkers = ['haml_lint']
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_coffee_checkers = ['eslint']
" let g:syntastic_coffee_eslint_exec = "eslint"
" let g:syntastic_javascript_eslint_exec = "eslint"

" ale
let g:ale_linters = {'javascript': ['eslint'], 'ruby': ['rubocop']}
" 'javascript': ['eslint', 'prettier'],
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\  'ruby': ['rubocop']
\}
let g:ale_fix_on_save = 0
" let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_linter_aliases = {'coffee': 'javascript'}
let g:ale_javascript_eslint_use_global = 1
let g:ale_open_list = 0

" vim-javascript
let g:javascript_plugin_flow = 1

" vim-jsx
let g:jsx_ext_required = 0

syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=2

" makes prettier-eslint-cli power the gq command for automatic formatting 
autocmd FileType javascript set formatprg=prettier-eslint\ --eslint-config-path=/home/johannes/Work/kenhub/kenhub/.eslintrc.js\ --config=/home/johannes/Work/kenhub/kenhub/.prettierrc.js\ --stdin
