
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Options
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal nowrap
setlocal foldmethod=indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nvim-ipy works with jupyter kernels, there's a jupyter kernel for scala
noremap <buffer> <F5> <Plug>(IPy-RunCell)
noremap <buffer> <F6> <Plug>(IPy-RunAll)
noremap <buffer> <F8> <Plug>(IPy-Interrupt)
noremap <buffer> <F9> <Plug>(IPy-Terminate)

" Used to expand decorations in worksheets
nnoremap <buffer> <Leader>ws <Plug>(coc-metals-expand-decoration)

" Toggle panel with Tree Views
nnoremap <buffer> <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
" Toggle <buffer> Tree View 'metalsPackages'
nnoremap <buffer> <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
" Toggle <buffer> Tree View 'metalsCompile'
nnoremap <buffer> <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
" Toggle <buffer> Tree View 'metalsBuild'
nnoremap <buffer> <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
" Reveal <buffer> current current class (trait or object) in Tree View 'metalsPackages'
nnoremap <buffer> <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>
