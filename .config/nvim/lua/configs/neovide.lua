---@diagnostic disable: undefined-global
if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    -- vim.o.guifont = "Source Code Pro:h12"
    vim.o.guifont = "FiraCode Nerd Font:h12"
    -- vim.g.neovide_fullscreen = true
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0
    vim.g.neovide_cursor_animate_in_insert_mode = true

    vim.keymap.set('n', '<D-s>', ':w<CR>')          -- Save
    vim.keymap.set('v', '<D-c>', '"+y')             -- Copy
    vim.keymap.set('n', '<D-v>', '"+P')             -- Paste normal mode
    vim.keymap.set('v', '<D-v>', '"+P')             -- Paste visual mode
    vim.keymap.set('c', '<D-v>', '<C-R>+')          -- Paste command mode
    vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli')     -- Paste insert mode

    -- Allow clipboard copy paste in neovim
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })
end
