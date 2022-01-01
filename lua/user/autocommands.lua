vim.cmd [[
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    " Jupyter
    "
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:nvim_ipy_perform_mappings = 0

    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    "
    " Make/ Compile Cpp
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


    set makeprg=g++\ -o\ %:r\ %

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

]]

vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end

    function! CppSetup()
        setlocal tabstop=2
        setlocal softtabstop=2
        setlocal shiftwidth=2
        setlocal autoindent
        setlocal foldmethod=syntax
        nnoremap <buffer> <F5> :update<CR>:call Compile()<CR>
        nnoremap <buffer> <F6> :update<CR>:call CompileAndRun()<CR>
        nnoremap <buffer> <F7> :update<CR>:call Make()<CR>
        nnoremap <buffer> <F8> :update<CR>:call MakeAndRun()<CR>
        " jump to/from header file
        nnoremap <silent> <leader>h  :CocCommand clangd.switchSourceHeader<CR>
    endfunction

    autocmd FileType cpp,c,hpp,h :call CppSetup()

    function! PySetup()
        setlocal tabstop=4
        setlocal softtabstop=4
        setlocal shiftwidth=4
        setlocal expandtab
        setlocal autoindent
        setlocal fileformat=unix
        setlocal nowrap
        setlocal foldmethod=indent
        " set path+=**
        map <buffer> <F5> <Plug>(IPy-RunCell)
        map <buffer> <F6> <Plug>(IPy-RunAll)
        map <buffer> <F8> <Plug>(IPy-Interrupt)
        map <buffer> <F9> <Plug>(IPy-Terminate)
        " imap <S-Tab> <Plug>(IPy-Complete)
        " map <S-?> <Plug>(IPy-WordObjInfo)
        map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
        map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
        map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
        map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
        map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
        map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)

        map <buffer> \]\] <Plug>(PythonsenseStartOfNextPythonClass)
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
    endfunction


    au BufNewFile,BufRead *.py :call PySetup()
]]

-- Autoformat
-- augroup _lsp
--   autocmd!
--   autocmd BufWritePre * lua vim.lsp.buf.formatting()
-- augroup end
