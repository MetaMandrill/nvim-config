"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Debugging with vimspector
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Neovim differences
" 
" neovim doesn't implement some features Vimspector relies on:
" 
"     WinBar - used for the buttons at the top of the code window and for changing the output window's current output.
"     Prompt Buffers - used to send commands in the Console and add Watches. (Note: prompt buffers are available in neovim nightly)
"     Balloons - this allows for the variable evaluation popup to be displayed when hovering the mouse. See below for how to create a keyboard mapping instead.
" 
" Workarounds are in place as follows:
" 
"     WinBar - There are mappings, :VimspectorShowOutput and :VimspectorReset
"     Prompt Buffers - There are :VimspectorEval and :VimspectorWatch
"     Balloons - There is the <Plug>VimspectorBalloonEval mapping. There is no default mapping for this, so I recommend something like this to get variable display in a popup:

"let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools']

" I want to keep my F3-F6 free, So I'm using the visual studio keybinding with a
" <leader> prefix
nmap <leader><F5> <Plug>VimspectorContinue
nmap <leader><F3> <Plug>VimspectorStop
nmap <leader><F4> <Plug>VimspectorRestart
nmap <leader><F6> <Plug>VimspectorPause
nmap <leader><leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader><F8> <Plug>VimspectorAddFunctionBreakpoint
nmap <leader><leader><F8> <Plug>VimspectorRunToCursor
nmap <leader><F10> <Plug>VimspectorStepOver
nmap <leader><F11> <Plug>VimspectorStepInto
nmap <leader><F12> <Plug>VimspectorStepOut

" also bind to <leader>d (debugger) with mnemonics

" nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>dd :call vimspector#Continue()<CR>

" nnoremap <leader>dd <Plug>VimspectorContinue
nnoremap <leader>ds <Plug>VimspectorStop
nnoremap <leader>dp <Plug>VimspectorPause

nnoremap <Leader>de :call vimspector#Reset()<CR>

nnoremap <Leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dC :call vimspector#ClearBreakpoints()<CR>

nnoremap <leader>dc <Plug>VimspectorRunToCursor

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
