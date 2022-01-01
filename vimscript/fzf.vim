""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" FZF
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap \s :Blines<SPACE>
" set grepprg=ag\ --nogroup\ --nocolor
"let g:ackprg = 'ag --vimgrep --smart-case'

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

command! -bang -nargs=+ -complete=dir Rag call fzf#vim#ag_raw(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

nnoremap <silent> <leader>bb :Buffers<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fw :vs<CR>:Files<CR>
nnoremap <silent> <leader>c :Commands<CR>
nnoremap <silent> <leader>sp :Ag <C-R><C-W><CR>
nnoremap <silent> <leader>ss :Ag<CR>
nnoremap <leader>so :Rag<SPACE>
nnoremap <silent> <C-s> :BLines<CR>
nnoremap <silent> <leader><C-s> :BLines <C-R><C-W><CR>
nnoremap <silent> <leader>' :Marks<CR>
nnoremap <silent> <leader>g :Commits<CR>
nnoremap <silent> <leader>H :Helptags<CR>
nnoremap <silent> <leader>hh :History<CR>
nnoremap <silent> <leader>h: :History:<CR>
nnoremap <silent> <leader>h/ :History/<CR> 

