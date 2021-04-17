" keyboard shortcuts
let mapleader = ','

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <leader>r :redraw!<CR>
nnoremap <leader>e :source $MYVIMRC<CR>
nnoremap <leader>l :e!<CR>
nnoremap <leader>g :vertical Gstatus<CR>

" nmap <C-P> :FZF<CR>
nmap <C-P> :GFiles<CR> 
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>a :Ag<CR>

nnoremap <leader>W :FixWhitespace<CR>

nnoremap <leader>d :NERDTreeToggle<CR>

" Get the filetype of the file with :echo &filetype
" autocmd FileType rust nnoremap <leader>p :RustFmt<CR>
autocmd FileType js nnoremap <leader>p :Prettier<CR>
autocmd FileType tsx nnoremap <leader>p :Prettier<CR>
autocmd FileType tf nnoremap <leader>p :Prettier<CR>
nnoremap <leader>p :Format<CR>
