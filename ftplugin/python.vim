
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Options
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal nowrap
setlocal foldmethod=indent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nvim-ipy plugins
let g:nvim_ipy_perform_mappings = 0
map <buffer> <F5> <Plug>(IPy-RunCell)
map <buffer> <F6> <Plug>(IPy-RunAll)
map <buffer> <F8> <Plug>(IPy-Interrupt)
map <buffer> <F9> <Plug>(IPy-Terminate)
" imap <S-Tab> <Plug>(IPy-Complete)
" map <S-?> <Plug>(IPy-WordObjInfo)

" pythonsense plugin
map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)

map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)
map <buffer> ]f <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ]F <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> [f <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> [F <Plug>(PythonsenseEndOfPreviousPythonFunction)

map <buffer> g: <Plug>(PythonsensePyWhere)
map <buffer> <leader>k <Plug>(PythonsensePyWhere)
 

