set nocompatible " Ask vim not to care about vi
filetype off

" Allow 256 colors
set t_Co=256

" 4 spaces when hitting TAB
set expandtab
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Display row number
set relativenumber
set number

" Highlight the line of the cursor
set cursorline

" Indent!
set smartindent
set cindent

" Search
:set ignorecase
:set smartcase
:set incsearch

" Set the runtime path to inclue Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Include fzf in the runtime path
set rtp+=~/.fzf

" Plugins should be between vundle#begin and vundle#end
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Linting
Plugin 'dense-analysis/ale'

" Colorscheme
" Plugin 'jacoborus/tender.vim'
" Plugin 'nightsense/cosmic_latte'
Plugin 'connorholyday/vim-snazzy'

" Airline
" Plugin 'vim-airline/vim-airline'

" Lightline
Plugin 'itchyny/lightline.vim'



call vundle#end()
filetype plugin indent on

" For tab indentation for makefiles
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType toml setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Prevent the background color from breaking
set t_ut=

" To display status line
set laststatus=2

" Do not display mode
set noshowmode

" Set up for tender
if (has("termguicolors"))
    set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
colorscheme snazzy
" Set airline theme
" let g:airline_theme='cosmic_latte_dark'
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

" Set language linter
let g:ale_linters = {
            \ 'python': ['pycodestyle', 'pyflakes'],
            \ }
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

