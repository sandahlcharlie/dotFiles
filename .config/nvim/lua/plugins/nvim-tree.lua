return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional icons
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
  },
  config = function()
    require("nvim-tree").setup({
      view = { width = 35 },
      renderer = { group_empty = true },
      filters = { dotfiles = false },
      git = { enable = true },
    })
  end,
}

