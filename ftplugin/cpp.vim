""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Compile()
    let curr_dir = expand('%:h')
    if curr_dir == ''
    let curr_dir = '.'
    endif
    echo curr_dir
    execute 'lcd ' . curr_dir
    execute '!clang++ -g -o %:r %'
    execute 'lcd -'
endfunction

function! CompileAndRun()
    let curr_dir = expand('%:h')
    if curr_dir == ''
    let curr_dir = '.'
    endif
    echo curr_dir
    execute 'lcd ' . curr_dir
    execute '!clang++ -g -o %:r % && ./%:r'
    execute 'lcd -'
endfunction


setlocal makeprg=g++\ -o\ %:r\ %

" invoke with :make %:r

" Save and make current file.o
function! Make()
  let curr_dir = expand('%:h')
  if curr_dir == ''
    let curr_dir = '.'
  endif
  echo curr_dir
  execute 'lcd ' . curr_dir
  execute 'make %:r.o'
  execute 'lcd -'
endfunction

function! MakeAndRun()
  let curr_dir = expand('%:h')
  if curr_dir == ''
    let curr_dir = '.'
  endif
  echo curr_dir
  execute 'lcd ' . curr_dir
  execute 'make %:r.o'
  execute '!./%:r'
  execute 'lcd -'
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Options
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal autoindent
setlocal foldmethod=syntax

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Mappings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <buffer> <F5> :update<CR>:call Compile()<CR>
nnoremap <buffer> <F6> :update<CR>:call CompileAndRun()<CR>
nnoremap <buffer> <F7> :update<CR>:call Make()<CR>
nnoremap <buffer> <F8> :update<CR>:call MakeAndRun()<CR>
" jump to/from header file
nnoremap <buffer> <silent> <leader>h  :CocCommand clangd.switchSourceHeader<CR>

