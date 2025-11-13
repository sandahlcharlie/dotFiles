return{
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local npairs = require("nvim-autopairs")

    npairs.setup({
      -- enable treesitter integration
      check_ts = true,
      -- here you add per-language tweaks *if* you want them
      ts_config = {
        -- don't add pairs inside these nodes
        lua = { "string" },             -- no autopairs in Lua strings
        javascript = { "template_string" },
        java = { "string", "comment" },
      },
      disable_filetype = { "TelescopePrompt", "spectre_panel" },
      fast_wrap = {},                  -- can be configured later
    })

    -- nvim-cmp integration
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.event:on(
      "confirm_done",
      cmp_autopairs.on_confirm_done()
    )
  end,
}
