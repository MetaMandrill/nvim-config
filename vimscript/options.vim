"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Editor settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8
set clipboard=unnamedplus
set mouse=a " allow mouse
set termguicolors
colorscheme gruvbox " TODO add some check in case gruvbox not installed

set cursorline

" but the config in my path so I can :find it
set path+=~/.config/nvim/

" TextEdit might fail if hidden is not set.
set hidden " don't unload buffer when it's not visible, just hide it.

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set autowrite     " Automatically :write before running commands


" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set completeopt=menuone,noselect  " requirement for nvim-compe
set complete+=i

" When the type of shell script is /bin/sh, assume a POSIX-compatible
" shell for syntax highlighting purposes.
" NOTE commented out as not sure still required
" let g:is_posix = 1
" syntax on


" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" Always use vertical/horizontal diffs
set diffopt+=vertical


set textwidth=80
set nowrap
set formatoptions-=t

set number
set relativenumber
set numberwidth=5

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set autoindent

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Code Folding
set foldenable          " enable folding
set foldmethod=indent
set foldlevelstart=99    " open all folds by default

" keep a number of lines between cursor and edge of screen
set  scrolloff=8
set  sidescrolloff=8

set signcolumn=yes  "can be set to number to integrate with number column
