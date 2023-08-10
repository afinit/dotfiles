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



""""""""""""""""""""""""""
""" PLUGIN CONFIG ::::::::
""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Plug 'derekwyatt/vim-scala'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

Plug 'scalameta/nvim-metals'

Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'

Plug 'rafamadriz/neon'

Plug 'NeogitOrg/neogit'


call plug#end()

""""""""""""""""""""""""""
""" PLUGIN CONFIG ::::::::
""""""""""""""""""""""""""


lua << END

require('lualine').setup()

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.g.neon_style = "dark"
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.g.neon_transparent = true

vim.cmd[[colorscheme neon]]

END

