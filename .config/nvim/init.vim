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

" Lang
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'derekwyatt/vim-scala'
Plug 'moll/vim-node', {'for': 'node'}
Plug 'elzr/vim-json', {'for': 'json'}

" Code Search
Plug 'kien/ctrlp.vim'

" LSP
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

call plug#end()
endif


" Configuration for vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

"" LSP CONFIG
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" NERDTree config
nmap <silent> <leader>nt :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.swp$']
