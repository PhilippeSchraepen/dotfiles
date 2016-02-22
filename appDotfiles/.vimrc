set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"personal config

set mouse=a " use mouse everywhere
set wildmenu " turn on command line completion wild style
set incsearch " BUT do highlight as you type your search phrase
set hlsearch            " Switch on search pattern highlighting.
set number " turn on line numbers
set numberwidth=5 " We are good up to 99999 lines
set showmatch " show matching brackets
set autoindent " use the current line's indent level to set the indent level of new lines
set smartindent " attempt to intelligently guess the indent level of any new line based on the previous line
set tabstop=2
set shiftwidth=2
set ignorecase
set splitright
set winminheight=0
set noequalalways
set noexpandtab
set nocp
filetype plugin on
map ;' mz'aO<Esc>O#if 0<Esc>'zo<Esc>i#endif<Esc>
map <F12> :source /home/jan/bin/number_toggle<CR>
map ;# :call AddIfndefGuard()<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=m2mweb/files --exclude=m2mweb/test --exclude=webgui/files .<CR>
set tags=./tags;/
set clipboard=unnamedplus 
set background=dark
syntax on
