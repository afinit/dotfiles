set nocompatible               " dump the old fashioned vi support!
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=100                " keep 100 lines of command line history
set ruler                      " show the cursor position all the time
set showcmd                    " display incomplete commands
set lazyredraw                 " don't update the display while executing macros
set showmode                   " so you know what mode you are in
set laststatus=2               " always put a status line in.
set scrolloff=10               " start scrolling 10 lines from the top/bottom
set ch=2                       " set command line 2 lines high
set nowrap                     " no line wrapping 
set shiftwidth=2               " round indent actions to multiple of 2
set softtabstop=2              " soft tabs = 2 spaces 
set tabstop=2                  " tabs = 2 spaces
set expandtab                  " expand tabs to spaces
set incsearch                  " do incremental searching
set hlsearch                   " highlight search terms
set number                     " enable line numbers
set relativenumber             " enable relative line numbers
set showmatch                  " show matching parenthesis
set hidden                     " allow hidden buffers with unsaved changes
set whichwrap+=<,>,[,]         " allow arrow keys to line wrap
set wildmenu                   " enable enhanced command line completion
set wildignore+=*.pui,*.prj    " ignore these when completing file or directory names
set ttyfast                    " faster terminal updates
set virtualedit+=block         " allow virtual-block select to go past end of lines

set autoindent                 " newline indents to level of current line
set shiftround                 " shifts to next multiple of shiftwidth
set showbreak=↪\ 
set list
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨


syntax on                      " enable syntax highlighting
filetype plugin indent on      " enable file type detection

set t_Co=256

" Plugins
silent! if plug#begin('~/.vim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'albfan/nerdtree-git-plugin'

" Edit
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" Appearance
Plug 'itchyny/lightline.vim'

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()
endif


" NERDTree config
nmap <silent> <leader>nt :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.swp$']
