set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-ctrlspace'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tyru/open-browser.vim'
Plugin 'elzr/vim-json'
Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'xolox/vim-easytags'
Plugin 'mhinz/vim-signify'
Plugin 'wlangstroth/vim-racket'
Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'marijnh/tern_for_vim'

source $VIMRUNTIME/vimrc_example.vim
set ts=4
set sw=4
let html_use_css = 1
set encoding=utf-8
"set linebreak
if has ("spell")
        set spell
                autocmd BufEnter *.st set nospell
                autocmd BufLeave *.st set spell
        hi SpellBad ctermfg=Red  ctermbg=black cterm=undercurl
endif

if has("gui_running")
    set guifont=Anonymice_Powerline:h11
endif

set list
set lcs=tab:>-   "show tabs
"set shell=c:\cygwin64\Cygwin.bat
set lcs+=trail:¦ "show trailing spaces
"hi NonText ctermfg=red "ctermbg=lightgrey
hi clear SpecialKey
hi link SpecialKey NonText

nmap <C-S> :bp<bar>sp<bar>bn<bar>bd<CR>
let g:netrw_nogx = 1 " disable netrw's gx mapping. 
nmap gx <Plug>(openbrowser-smart-search) 
vmap gx <Plug>(openbrowser-smart-search) 

set undodir=~/.vimundo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set backspace=indent,eol,start
"let g:ycm_complete_in_comments = 1
"let g:ycm_confirm_extra_conf = 0
set expandtab

set tags=c:/Project/tags,./tags

let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
let g:solarized_italic=0    "default value is 1
set background=light
colorscheme solarized

set number
set hidden
let g:vim_markdown_folding_disabled=1
let g:vim_json_syntax_conceal=0

"Easytag tag file
let g:easytags_dynamic_files = 1

" tagbar mapping
nmap <F8> :TagbarToggle<CR>

" Rainbow config
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
