-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
    -- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<leader>fF", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
      { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    },
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
      },
    },
  },
}
