" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <leader>a :Ack!<space>
nnoremap <leader>r :redraw!<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>e :source $MYVIMRC<CR>
nnoremap <leader>W :FixWhitespace<CR>
nnoremap <leader>z :Errors<CR>
" Get the filetype of the file with :echo &filetype
autocmd FileType rust nnoremap <leader>p :RustFmt<CR>
autocmd FileType js nnoremap <leader>p :Prettier<CR>
nnoremap <leader>l :e!<CR>
nnoremap <leader>g :vertical Gstatus<CR>
nnoremap <leader>G Gstatus<CR>
nnoremap <leader>h :Gdiff<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>f za
" nnoremap <leader>k :set foldmethod=indent<CR>
nnoremap <leader>F $v%zf
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>B :CtrlPMixed<CR>
" nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>q :ALEFindReferences<CR>
nnoremap <leader>t :sp term://zsh<CR>
nnoremap <leader>cf :CocFix<CR>
nnoremap <leader>ca :CocAction<CR>


"fkeys
"TODO: Create 4 fkeys for working with Fugitive
:nnoremap <F3> :bp<CR>
:nnoremap <F4> :bn<CR>
:nnoremap <F5> gT<CR>
:nnoremap <F6> gt<CR>
:nnoremap <F8> :w<CR>
