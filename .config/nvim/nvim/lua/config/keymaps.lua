-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--#region
-- LazyVim Changelog
-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

vim.api.nvim_set_keymap("t", "<C-t>", "<cmd>ToggleTerm size=40 direction=float<cr>", { noremap = true })
vim.api.nvim_set_keymap("", "<C-t>", "<cmd>ToggleTerm size=40 direction=float<cr>", { noremap = true })
vim.keymap.del("n", "<leader>l")
-- vim.keymap.del("t", "<C-t")
map("n", "<leader>Lh", function()
  Util.news.changelog()
end, { desc = "LazyVim Changelog" })
map("n", "<leader>Lh", function()
  Util.news.changelog()
end, { desc = "LazyVim Changelog" })
map("n", "<leader>Ll", "<cmd>Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>fq", "<cmd>FineCmdline e <cr>", { desc = "Find It" })
vim.api.nvim_set_keymap("n", "ff", 'LazyVim.pick("files", { root = false })', { noremap = true, silent = true })

-- map("n", "<leader><leader>", "<cmd>FineCmdline e <cr>", { desc = "Find It" })

-- map("t", "<C-t>", "<cmd>ToggleTerm size=40 direction=float<cr>", { noremap = true })
