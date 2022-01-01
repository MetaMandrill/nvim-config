""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" General custon bindings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

inoremap jk <ESC>
map <leader><leader> :nohlsearch<CR>

" search for highlighted text
"vnoremap // y/<C-R>"<CR>
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" moving between buffers
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Switch between the last two files
nnoremap <Leader><tab> <C-^>

nmap <S-l> :bnext<CR>
nmap <S-h> :bprevious<CR>

" kill buffer, keep window
map <leader>bk :bp<bar>sp<bar>bn<bar>bd<CR>

"tabs
" nnoremap <leader>tt :tabnew<CR>
" nnoremap <leader>t? :tabs<CR>
" nnoremap <leader>tn :tabnext<CR>
" nnoremap <leader>tp :tabprevious<CR>
" nnoremap <leader>tc :tabclose<CR>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" moving within buffer
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map B ^
map E $

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Move text up and down
nnoremap <A-j> <Esc>:m .+1<CR>==gi
nnoremap <A-k> <Esc>:m .-2<CR>==gi


nnoremap <space><space> za

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" terminal mode
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"actually escape term mode
" tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>


tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

" "use ALT-{h,j,k,l} to move window in every mode
" tnoremap <A-h> <C-\><C-N><C-w>h
" tnoremap <A-j> <C-\><C-N><C-w>j
" tnoremap <A-k> <C-\><C-N><C-w>k
" tnoremap <A-l> <C-\><C-N><C-w>l
" inoremap <A-h> <C-\><C-N><C-w>h
" inoremap <A-j> <C-\><C-N><C-w>j
" inoremap <A-k> <C-\><C-N><C-w>k
" inoremap <A-l> <C-\><C-N><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l


