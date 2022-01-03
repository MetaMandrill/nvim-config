""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Main configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" source ./vimscript/plugins.vim
lua require "user.plugins"
runtime vimscript/options.vim
" lua ./lua/user/options.lua
runtime vimscript/mappings.vim

" source ./vimscript/lightline.vim
lua require "user.colorscheme"
lua require "user.gitsigns"
lua require "user.bufferline"
lua require "user.lualine"

lua require "user.toggleterm"

lua require "user.project"
lua require "user.impatient"
lua require "user.alpha"

lua require "user.autocommands"

lua require "user.autopairs"
lua require "user.comment"

" source ./vimscript/nerdtree.vim
" lua require "user.nvim-tree"
runtime vimscript/ranger.vim

runtime vimscript/fugitive.vim


lua require "user.cmp"
" lua require "user.lsp"
runtime vimscript/coc.vim
lua require "user.telescope"
lua require "user.treesitter"
" source ./vimscript/fzf.vim
runtime vimscript/vimspector.vim
" lua require "user.refactor"
lua require "user.whichkey"

""""""""""""""""""""""""""""""""""""""""
" Misc
"
""""""""""""""""""""""""""""""""""""""""
command GetFname execute "let @+ = expand(\"%\")"

" Help Vim recognize *.sbt and *.sc as Scala files
au BufRead,BufNewFile *.sbt,*.sc set filetype=scala

let g:coc_disable_transparent_cursor = 1

nnoremap <expr> <leader>sF ':Telescope find_files<cr>' . "'" . expand('<cword>')
nnoremap <expr> <leader>sp ':Telescope current_buffer_fuzzy_find<cr>' . expand('<cword>')

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
