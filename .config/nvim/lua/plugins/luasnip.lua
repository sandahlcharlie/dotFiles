return {
  "L3MON4D3/LuaSnip",
  event = { "InsertEnter" },
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local snip_data_dir = "~/.config/nvim/data/luasnip"
    vim.fn.mkdir(snip_data_dir, "p")

    local luasnip = require("luasnip")

    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      store_selection_keys = "<Tab>",  -- optional: allows Tab to store a selection as snippet
      enable_autosnippets = true,
      -- You can also specify snippet paths here
      -- but we'll load them below from snip_data_dir
    })

    -- Load community snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Load your personal snippets from /data/luasnip/snippets/
    require("luasnip.loaders.from_vscode").lazy_load({ paths = snip_data_dir .. "/snippets" })
    require("luasnip.loaders.from_lua").lazy_load({ paths = snip_data_dir .. "/lua" })

    -- Optional: persist snippet history per session
    luasnip.snippet_storage_dir = snip_data_dir
  end,
}

