let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'template_path': '', 'custom_wiki2html': '$HOME/.bin/wiki2html.sh' }]
let g:vimwiki_global_ext = 1
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_list = [{
	\ 'path': '~/vimwiki',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/vimwiki/site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]

:nmap <Leader>ww <Plug>VimwikiIndex
:nmap <Leader>wb <Plug>VimwikiGoBackLink
:nmap <Leader>wh :Vimwiki2HTMLBrowse<CR>
:nmap <Leader>wa :VimwikiAll2HTML<CR>
:nmap <leader>ws :VimwikiSearch<CR>
:nmap <leader>wt :VimwikiTOC<CR>


