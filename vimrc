" ----------------------------------------------------------------------------
" --required by vundle
" close the compatible mode with vi
set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ----------------------------------------------------------------------------
" --Bundles

" Fugitive
Bundle 'tpope/vim-fugitive'

" NerdTree
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Python mode
Bundle 'klen/python-mode'

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Power line (not working well)
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"set laststatus=2

filetype plugin indent on

" ----------------------------------------------------------------------------
" --highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=red ctermfg=white guibg=#592929
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END
" the following setting will affect all the file types
"highlight Excess ctermbg=red ctermfg=white guibg=#592929
"match Excess /\%80v.\+/

" ----------------------------------------------------------------------------
" --my own settings 

" show line number
set nu

" indent when moving to the next line hile writing code
set autoindent

" expand tabs into space
set expandtab

" set tabstop to tell vim how many columns a tab counts for
set tabstop=4 

" set softtabstop to control how many columns vim uses when you hit Tab in
" insert mode.
set softtabstop=4

" when using >> or << command, shift lines by 4 spaces
set shiftwidth=4

" show a virtual line under the cursor's current line
set cursorline

" show the matching part of the pair for [], {} and ()
set showmatch

" increment search
set incsearch

" highlight search
set hlsearch

" show ruler
set ruler

" show mode
set showmode

" enable all python syntax highlighting features
let python_highlight_all = 1

set encoding=utf-8
set smartindent
syntax on

