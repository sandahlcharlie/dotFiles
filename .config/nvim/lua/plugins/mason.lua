return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  build = ":MasonUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local mason_root = "~/.config/nvim/data/mason"
    vim.fn.mkdir(mason_root, "p")

    require("mason").setup({
      install_root_dir = mason_root,
      ui = { border = "rounded" },
    })

    require("mason-lspconfig").setup({
      ensure_installed = { "pyright", "r_language_server", "yamlls", "bashls", "lua_ls", "jsonls", "sqlls",},
      automatic_installation = true,
    })
  end,
}

