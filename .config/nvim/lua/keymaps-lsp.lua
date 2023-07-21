local wk = require("which-key")

---@diagnostic disable-next-line: redundant-parameter
wk.setup {
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>",   -- binding to scroll up inside the popup
	},
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
}

wk.register({
		b = {
			name = "Buffers",
			D = { "<cmd>BufferLineSortByDirectory<cr>", "Sort by directory" },
			e = { "<cmd>BufferLinePickClose<cr>", "Pick which buffer to close" },
			f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
			h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
			j = { "<cmd>BufferLinePick<cr>", "Jump" },
			l = { "<cmd>Telescope buffers<cr>", "Buffers" },
			L = { "<cmd>BufferLineSortByExtension<cr>", "Sort by language" },
			n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
			p = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
			r = { "<cmd>BufferLineCloseRight<cr>", "Close all to the right" },
			W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
			x = { "<cmd>bdelete<cr>", "Delete Buffer" }
		},
		f = {
			name = "file",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			b = { "<cmd>Telescope buffers<cr>", "Buffers" },
			r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
			h = { "<cmd>Telescope help_tags<cr>", "All tags", noremap = false },
			a = { "<cmd>Telescope live_grep<cr>", "Find All" },
			-- e = { "<cmd>NERDTreeToggle<CR>", "Nerdtree" },
			e = { "<cmd>NvimTreeToggle<CR>", "File Tree" },
		},
		g = {
			name = "Fugitive",
			g = { "<cmd>vertical Git<cr>", "Diff" },
			c = { "<cmd>Git commit<cr>", "Commit" },
			p = { "<cmd>Git push<cr>", "Push" },
			b = { "<cmd>GBrowse<cr>", "Open in Browser" },
			i = { "<cmd>Git blame<cr>", "Blame" },
			l = { "<cmd>LazyGit<cr>", "Lazy Git" },
			f = { "<cmd>LazyGitCurrentFile<cr>", "Lazy Git File" },
			d = {
				h = { "<cmd>Ghdiffsplit<cr>", "Diff horizontal split" },
				d = { "<cmd>Git diff develop<cr>", "Diff develop" },
				m = { "<cmd>Git diff main<cr>", "Diff main" },
			},
			s = { "<cmd>Git pull<cr>", "Sync" }
		},
		l = {
			name = "Editor",
			A = { "<Cmd>lua vim.lsp.buf.code_action()<cr>", "Old Actions" },
			a = { "<cmd>CodeActionMenu<cr>", "Fancy Actions" },
			c = {
				name = "CoPilot",
				p = { "<cmd>Copilot panel<cr>", "Panel" },
			},
			D = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
			d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
			e = { "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>", "diagnostics" },
			f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
			h = { "<cmd>Telescope commands<cr>", "Telescope CoC commands" },
			i = { "<Cmd>lua vim.lsp.buf.hover()<cr>", "Show Documentation" },
			o = { "<cmd>Vista nvim_lsp<cr>", "Outline" },
			r = { "<cmd>Telescope lsp_references<cr>", "References" },
			R = { "<Plug>(coc-rename)", "Rename(F2)" },
			s = {
				name = "Snippets",
				m = { "<cmd>UltiSnipsEdit<cr>", "Edit" },
			},
			t = { "<cmd>Telescope lsp_type_definitions<cr>", "Type Definitions" },
			w = { "<cmd>FixWhitespace<cr>", "Fix Whitespace" },
			-- e = { "<cmd>edit $MYVIMRC<CR>", "Edit RC" },
			T = { "<cmd>TroubleToggle<CR>", "Trouble" }
		},
		m = {
			name = "Macros",
			D = { "<cmd>put =strftime('%d.%m.%Y')<cr>", "Date" },
			m = { "<cmd>!markmap %<CR>", "MarkMap" },
		},
		M = {
			name = "Misc",
			f = { "<cmd>FixWhitespace<cr>", "Fix Whitespace" },
		},
		n = {
			name = "Neovim",
			r = { "<cmd>luafile ~/.config/nvim/init.lua<CR>", "Reload" },
			u = { "<cmd>PackerUpdate<CR>", "Update plugins" },
			t = { "<cmd>term<CR>", "Terminal" },
		},
		t = {
			c = { "<cmd>tabnew<cr>", "Create Tab" },
			n = { "<cmd>tabNext<cr>", "Next Tab" },
			p = { "<cmd>tabprevious<cr>", "Previous Tab" },
			x = { "<cmd>tabclose<cr>", "Close Tab" },
		},
		p = { "<cmd>CocCommand prettier.formatFile<cr>", "prettier" },
		q = { "<cmd>confirm q<CR>", "Quit" },
		s = {
			name = "Search",
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
			H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
			M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
			r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
			R = { "<cmd>Telescope registers<cr>", "Registers" },
			t = { "<cmd>Telescope live_grep<cr>", "Text" },
			k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
			C = { "<cmd>Telescope commands<cr>", "Commands" },
			l = { "<cmd>Telescope resume<cr>", "Resume last search" },
			p = {
				"<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
				"Colorscheme with Preview",
			},
		},
		w = {
			w = { "<Plug>VimwikiIndex", "Index" },
			b = { "<Plug>VimwikiGoBackLink", "Go Back" },
			h = { "<cmd>Vimwiki2HTMLBrowse<CR>", "Browse" },
			a = { "<cmd>VimwikiAll2HTML<CR>", "Convert All" },
			s = { "<cmdjVimwikiSearch<CR>" },
			r = { "<cmd>Telescope coc references<cr>", "References" },
		},
		x = {
			name = "Trouble",
			x = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
			z = { "<cmd>TroubleToggle quickfix<cr>", "QuickFixes" },
			w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace issues" },
			l = { "<cmd>TroubleToggle lsp_references <cr>", "LSP References" }
		}
	},
	{
		mode = "n",
		prefix = "<leader>"
	})
