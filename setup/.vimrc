set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/tagbar'

Plugin 'Yggdroot/indentLine'
Plugin 'itchyny/calendar.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

noremap <leader>d :NERDTreeToggle<CR>
noremap <leader>t :TagbarToggle<CR>


"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"set cryptmethod=blowfish2

"set autochdir
set tags=./tags,tags;

"set spell
"map :w :up
"map :q :confirm q

set hlsearch
set incsearch
set showmatch
set smartcase

set number
set linebreak
set scrolloff=2

"set background=dark

set hidden
set showcmd
set ruler

set nrformats-=octal
set backspace=indent,eol,start

set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround

set foldmethod=marker
set foldmarker={{{,}}}

set timeout
set timeoutlen=1000
set ttimeoutlen=100

set wildmenu
set wildmode=full

set backup
if &backupdir =~# '^\.,'
	let &backupdir = "/Users/jiapengjun/Library/Vim/backup," . &backupdir
endif

set swapfile
if &directory =~# '^\.,'
    let &directory = "/Users/jiapengjun/Library/Vim/swap," . &directory
endif

set undofile
if &undodir =~# '^\.\%(,\|$\)'
    let &undodir = "/Users/jiapengjun/Library/Vim/undo," . &undodir
endif

"set gdefault

colorscheme peachpuff
filetype plugin indent on
syntax on

"let mapleader=","
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exec "normal g'\"" | endif

augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" IDE
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1

" C, java
autocmd FileType c set foldmethod=syntax
autocmd FileType java set foldmethod=syntax

" Python 
autocmd FileType python set foldmethod=indent
autocmd FileType python nnoremap <leader>y :0,$!yapf<CR>

" javascript
function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
autocmd FileType javascript call JavaScriptFold()

" All fold is open
set foldlevelstart=10

au BufReadPost *.json-lpr set syntax=json
