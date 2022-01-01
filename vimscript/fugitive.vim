""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Git Fugitive
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open git staus at a fixed hight of 20 lines
function! ToggleGStatus()
  if buflisted(bufname('.git/index'))
    bd .git/index
  else
    Git
    20wincmd_
  endif
endfunction

command! ToggleGStatus :call ToggleGStatus()

" fix window height for all fugtive buffers
augroup fugitive_au
  autocmd!
  autocmd FileType fugitive setlocal winfixheight
augroup END

nnoremap <silent> <leader>gg :ToggleGStatus<cr>
