return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(_, bufnr)
      local map = function(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
      end
      map("n", "gd", vim.lsp.buf.definition)
      map("n", "gr", vim.lsp.buf.references)
      map("n", "K",  vim.lsp.buf.hover)
      map("n", "<leader>rn", vim.lsp.buf.rename)
      map("n", "<leader>ca", vim.lsp.buf.code_action)
    end

    vim.lsp.config("pyright", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            autoImportCompletions = true,
            useLibraryCodeForTypes = true,
          },
        },
      },
    })
    vim.lsp.enable("pyright")

    vim.lsp.config("jsonls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        json = {
          validate = { enable = true },
        },
      },
    })
    vim.lsp.enable("jsonls")

    vim.lsp.config("yamlls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        yaml = {
          keyOrdering = false,
          format = { enable = true },
          validate = true,
          hover = true,
        },
      },
    })
    vim.lsp.enable("yamlls")

    vim.lsp.config("bashls", {
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "sh", "bash", "zsh" },
    })
    vim.lsp.enable("bashls")

    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          diagnostics = { globals = { "vim" } },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = { enable = false },
        },
      },
    })
    vim.lsp.enable("lua_ls")

    vim.lsp.config("r_language_server", {
      capabilities = capabilities,
      on_attach = on_attach,
      -- Requires R + languageserver installed
      -- Run this in R if missing:
      -- install.packages("languageserver", repos="https://cloud.r-project.org")
    })
    vim.lsp.enable("r_language_server")

    vim.lsp.config("sqlls", {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes = { "sql", "mysql" },
    })
    vim.lsp.enable("sqlls")

    -- Example for more servers:
    -- for _, name in ipairs({ "ruff", "lua_ls", "bashls" }) do
    --   vim.lsp.config(name, { capabilities = capabilities, on_attach = on_attach })
    --   vim.lsp.enable(name)
    -- end
  end,
}

