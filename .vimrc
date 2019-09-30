set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins added by me:
Plugin 'ervandew/supertab' " Tab completion
Plugin 'scrooloose/nerdtree' " File brownser
Plugin 'altercation/vim-colors-solarized' " Solorized color theme
Plugin 'kien/rainbow_parentheses.vim' " make reading parens easier
Plugin 'gregsexton/MatchTag' " match html/xml tags
Plugin 'elzr/vim-json' " json syntax
Plugin 'tpope/vim-fugitive' " adds git functionality, such as :Gblame

Plugin 'vim-airline/vim-airline' " cool status bars
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'edkolev/tmuxline.vim' " add the airline style to tmux status bar

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" see :h vundle for more details or wiki for FAQ
"
"
" Put your non-Plugin stuff after this line

syntax on
set tabstop=4 shiftwidth=4 expandtab " set tab to equal 4 spaces
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab " use 2 spaces for javascript

" Use dark solarized theme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" bind F2 to paste toggle, you can copy paste without VIM interpreting
" tabs/comments
set pastetoggle=<F2>

" show what mode you are in(insert, visual, etc)
set showmode

" show the line and column number in bottom right
set ruler

" highlight any character greater tha 120 as an error
match Error /\%121v.\+/

" set search to highlight all matches
set hlsearch

" allow backspace to always work in insert mode
set backspace=indent,eol,start

" Stop that stupid window from popping up
map q: :q

" Higlight the 121st column 
let &colorcolumn=join(range(121,999),",")
let &colorcolumn="121,".join(range(400,999),",")

" Set the vim path to the curred directory, and subdirectories. Useful for tabfind, etc
set path=$PWD/**

" Set the tab name to just be the file name
set tabline ="%N/\ %t\ %M"

"hacky workaround for vim airline
set laststatus=2

" enable airline for tab bar
let g:airline#extensions#tabline#enabled = 1
" only show file name in tab
let g:airline#extensions#tabline#fnamemod = ':t'
"select airline theme
let g:airline_theme='wombat'

"enable glyphs for airline
let g:airline_powerline_fonts = 1

"Turn on spell checking
set spell spelllang=en_us







