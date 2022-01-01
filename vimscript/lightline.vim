""""""""""""""""""""""""""""""""""""""""
" lightline Settings
"
""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'right': [ [ 'lineinfo'],
      \              [ 'git-status','filetype'],
      \              [ 'coc-status']
      \             ]
      \ },
      \ 'component': {
      \   'git-status': '%{FugitiveStatusline()}',
      \   'coc-status': '%{coc#status()}%{get(b:,''coc_current_function'','''')}'
      \ },
      \ }

