if vim.g.vscode then
  local vscode = require("vscode-neovim")
  vim.g.mapleader = " "
  vim.cmd("nnoremap <leader>we :pu=strftime('%d.%m.%Y')<CR>")
  vim.cmd("nnoremap <leader>lf :lua require('vscode-neovim').call('editor.action.formatSelection.none')<CR>")
  vim.notify = vscode.notify
  vim.g.autoformat = true
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ff", 'LazyVim.pick("files", { root = false })', { noremap = true, silent = true })
vim.o.guifont = "FiraCode Nerd Font Mono:h16"
vim.opt.laststatus = 3

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- vim.o.guifont = "Source Code Pro:h12"
  -- vim.g.neovide_fullscreen = true
  vim.o.guifont = "FiraCode Nerd Font Mono:h16"
  -- Allow clipboard copy paste in neovim
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
  vim.g.neovide_cursor_animate_in_insert_mode = true

  -- iteration 1
  -- vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  -- vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  -- vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  --
  -- iteration 2
  -- vim.keymap.set("v", "<C-S-C>", '"+y') -- Copy
  -- vim.keymap.set("n", "<C-S-V>", '"+P') -- Paste normal mode
  -- vim.keymap.set("v", "<C-S-V>", '"+P') -- Paste normal mode
  --
  -- -- iteration 3
  -- vim.api.nvim_set_keymap("v", "<sc-c>", '"+y', { noremap = true })
  -- vim.api.nvim_set_keymap("n", "<sc-v>", 'l"+P', { noremap = true })
  -- vim.api.nvim_set_keymap("v", "<sc-v>", '"+P', { noremap = true })
  -- vim.api.nvim_set_keymap("c", "<sc-v>", '<C-o>l<C-o>"+<C-o>P<C-o>l', { noremap = true })
  -- vim.api.nvim_set_keymap("i", "<sc-v>", '<ESC>l"+Pli', { noremap = true })
  -- vim.api.nvim_set_keymap("t", "<sc-v>", '<C-\\><C-n>"+Pi', { noremap = true })

  -- iteration 4
  -- vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  -- vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  -- vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
  -- vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
  -- vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
end

-- bootstrap lazy.nvim, LazyVim and your plugins
vim.o.clipboard = "unnamedplus"
vim.opt.relativenumber = false

require("config.lazy")
