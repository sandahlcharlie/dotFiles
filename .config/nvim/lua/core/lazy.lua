-- Set Lazy to install under your config-local data folder
local lazypath = vim.fn.stdpath("config") .. "/data/lazy/lazy.nvim"

-- Bootstrap if not already cloned
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim",
    "--branch=stable", lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },  -- auto-load everything under lua/plugins/
  },
  defaults = { lazy = true },
  change_detection = { notify = false },
})
