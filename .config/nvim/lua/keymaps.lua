local wk = require("which-key")

---@diagnostic disable-next-line: redundant-parameter
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

wk.register({
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false },
    h = { "<cmd>Telescope help_tags<cr>", "All tags", noremap=false },
    a = { "<cmd>Telescope live_grep<cr>", "Find All" },
  },
  l = {
    name = "CoC",
    h = { "<cmd>Telescope coc commands<cr>", "Telescope CoC commands" },
    d = { "<cmd>CocDiagnostics<cr>", "Diagnostics" },
    a = { "<cmd>Telescope coc code_actions<cr>", "Actions" },
    f = { "<cmd>Format<cr>", "Format" },
    o = { "<cmd>Vista coc<cr>", "Outline" },
    r = { "<cmd>Telescope coc references<cr>", "References" },
    D = { "<cmd>Telescope coc definitions<cr>", "Definitions" },
    t = { "<cmd>Telescope coc type_definitions<cr>", "Type Definitions" },
    p = { "<cmd>Telescope coc file_code_actionh<cr>", "File Code Actions" },
    w = { "<cmd>FixWhitespace<cr>", "Fix Whitespace" },
    R = { "<cmd>CocRestart<cr>", "Restart CoC" }
  },
  n = {
    name = "Neovim",
    r = {"<cmd>source $MYVIMRC<CR>", "Reload"},
    e = {"<cmd>edit $MYVIMRC<CR>", "Edit RC"},
    u = {"<cmd>PlugUpdate<CR>", "Update plugins"},
    t = {"<cmd>term<CR>", "Terminal"},
  },
  g = {
    name = "Fugitive",
    g = {"<cmd>vertical Git<cr>", "Diff"},
    c = {"<cmd>Git commit<cr>", "Commit"},
    p = {"<cmd>Git push<cr>", "Push"},
    b = {"<cmd>GBrowse<cr>", "Open in Browser"},
    i = {"<cmd>Git blame<cr>", "Blame"},
    d = {
      d = {"<cmd>Git diff develop<cr>", "Diff develop"},
      m = {"<cmd>Git diff main<cr>", "Diff main"},
    },
    s = {"<cmd>Git pull<cr>", "Sync"}
  },
  w = {
    w = {"<Plug>VimwikiIndex", "Index"},
    b = {"<Plug>VimwikiGoBackLink", "Go Back"},
    h = {"<cmd>Vimwiki2HTMLBrowse<CR>", "Browse"},
    a = {"<cmd>VimwikiAll2HTML<CR>", "Convert All"},
    s = {"<cmdjVimwikiSearch<CR>"} ,
    r = { "<cmd>Telescope coc references<cr>", "References" },
  },
  -- t =  {
  --   name = "ToggleTerm",
  --   h = {"<cmd>ToggleTerm size=40 direction=horizontal<cr>", "Horizontal" },
  --   f = {"<cmd>ToggleTerm size=40 direction=float<cr>", "Float" },
  --   v = {"<cmd>ToggleTerm size=40 direction=vertical<cr>", "Vertical" },
  --   t = {"<cmd>ToggleTermToggleAll<cr>", "toggle" }
  -- },
  t = {
    c = {"<cmd>tabnew<cr>", "Create Tab"},
    n = {"<cmd>tabNext<cr>", "Next Tab"},
    p = {"<cmd>tabprevious<cr>", "Previous Tab"},
    x = {"<cmd>tabclose<cr>", "Close Tab"},
  },
  m = {
    name = "Macros",
    d = {"<cmd>put =strftime('%d.%m.%Y')<cr>", "Date"}
  },
  d = {"<cmd>NERDTreeToggle<CR>", "Nerdtree"},
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
}, { prefix = "<leader>" })
