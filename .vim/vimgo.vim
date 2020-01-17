" Go Settings
autocmd FileType go nmap <leader>8  <Plug>(go-test)
autocmd FileType go nmap <leader>9  <Plug>(go-build)
autocmd FileType go nmap <leader>0  <Plug>(go-fmt)
autocmd FileType go nnoremap <leader>p :GoFmt<CR>
let g:go_fmt_command = "go-build"
let g:go_fmt_command = "goimports"
