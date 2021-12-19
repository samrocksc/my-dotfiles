" keyboard shortcuts
let mapleader = ','

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <leader>r :redraw!<CR>
nnoremap <leader>e :source $MYVIMRC<CR>
nnoremap <leader>l :e!<CR>
nnoremap <leader>g :vertical Git<CR>
nnoremap <leader>s :Snippets<CR>
nnoremap <leader>f :FZF<CR>

nmap <C-P> :GFiles<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>a :Ag<CR>

nnoremap <leader>W :FixWhitespace<CR>

nnoremap <leader>we :pu=strftime('%Y.%m.%d')<CR>
nnoremap <leader>wt :pu=strftime('%H%M')

nnoremap <leader>d :NERDTreeToggle<CR>

" Get the filetype of the file with :echo &filetype
" autocmd FileType rust nnoremap <leader>p :RustFmt<CR>
autocmd FileType js nnoremap <leader>p :Prettier<CR>
autocmd FileType tsx nnoremap <leader>p :Prettier<CR>
autocmd FileType tf nnoremap <leader>p :Prettier<CR>
nnoremap <leader>p :Format<CR>
