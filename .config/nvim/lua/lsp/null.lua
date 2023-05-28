local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.code_actions.eslint,
  null_ls.builtins.code_actions.refactoring,
  null_ls.builtins.code_actions.gitsigns,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.terraform_fmt,
  null_ls.builtins.formatting.gofmt,
  null_ls.builtins.formatting.prettier.with({
    prefer_local = "node_modules/.bin",
  }),
  null_ls.builtins.diagnostics.eslint,
  -- null_ls.builtins.diagnostics.spectral,
  null_ls.builtins.diagnostics.yamllint,
  null_ls.builtins.diagnostics.terraform_validate,
  null_ls.builtins.completion.spell
}

local on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.keymap.set("n", "<Leader>f", function()
          vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
        end, { buffer = bufnr, desc = "[lsp] format" })

        -- format on save
        vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
        vim.api.nvim_create_autocmd(event, {
          buffer = bufnr,
          group = group,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr, async = async })
          end,
          desc = "[lsp] format on save",
        })
      end

      if client.supports_method("textDocument/rangeFormatting") then
        vim.keymap.set("x", "<Leader>f", function()
          vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
        end, { buffer = bufnr, desc = "[lsp] format" })
      end
    end,

    null_ls.setup({
      sources = sources,
      on_attach = on_attach
    })
