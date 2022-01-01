""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vim-PLug
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'mileszs/ack.vim'
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Plug 'romgrk/nvim-treesitter-context'
"
Plug 'jeetsukumaran/vim-pythonsense'

" Plug 'neovim/nvim-lspconfig'
" https://github.com/ray-x/lsp_signature.nvim
" Plug 'ray-x/lsp_signature.nvim'
" https://github.com/hrsh7th/nvim-compe 

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'bfredl/nvim-ipy'
Plug 'puremourning/vimspector'

" Plug 'tmhedberg/SimpylFold'

Plug 'gabrielelana/vim-markdown'
"Plug 'reedes/vim-pencil'
Plug 'dkarter/bullets.vim'


" Plug 'vimwiki/vimwiki'
" Plug 'tbabej/taskwiki'

Plug 'tpope/vim-surround'



" Plug 'akinsho/nvim-toggleterm.lua'

" Plug 'airblade/vim-gitgutter'
" https://github.com/lewis6991/gitsigns.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'ThePrimeagen/refactoring.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" Initialize plugin system
call plug#end()
