""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Main configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source ./vimscript/plugins.vim
lua require "user.plugins"
source ./vimscript/options.vim
" lua ./lua/user/options.lua
source ./vimscript/mappings.vim

" source ./vimscript/lightline.vim
lua require "user.colorscheme"
lua require "user.gitsigns"
lua require "user.bufferline"
lua require "user.lualine"

lua require "user.toggleterm"

lua require "user.project"
lua require "user.impatient"
lua require "user.alpha"
lua require "user.whichkey"

lua require "user.autocommands"

lua require "user.autopairs"
lua require "user.comment"

" source ./vimscript/nerdtree.vim
" lua require "user.nvim-tree"
source ./vimscript/ranger.vim

source ./vimscript/fugitive.vim


lua require "user.cmp"
" lua require "user.lsp"
source ./vimscript/coc.vim
lua require "user.telescope"
lua require "user.treesitter"
" source ./vimscript/fzf.vim
source ./vimscript/vimspector.vim
" lua require "user.refactor"

" Functions
command GetFname execute "let @+ = expand(\"%\")"

" Help Vim recognize *.sbt and *.sc as Scala files
au BufRead,BufNewFile *.sbt,*.sc set filetype=scala


""""""""""""""""""""""""""""""""""""""""
" writing 
"
""""""""""""""""""""""""""""""""""""""""
" Bullets.vim
let g:bullets_enabled_file_types = [
            \ 'markdown',
            \ 'text',
            \ 'gitcommit',
            \ 'scratch',
            \ 'vimwiki'
            \]















