-- In your lazy.nvim plugins configuration
return{
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 15,
      open_mapping = [[<c-\>]],
      direction = 'horizontal',
      shade_terminals = true,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = false,
    }

    -- Function to run code based on filetype
    local function run_code()
      local filetype = vim.bo.filetype
      local filepath = vim.fn.expand("%:p")
      local cmd = ""
      
      if filetype == "python" then
        cmd = "python3 " .. filepath
      elseif filetype == "javascript" then
        cmd = "node " .. filepath
      elseif filetype == "r" then
        cmd = "Rscript " .. filepath
      elseif filetype == "java" then
        local filename = vim.fn.expand("%:t:r")
        cmd = "javac " .. filepath .. " && java " .. filename
      elseif filetype == "c" then
        local output = vim.fn.expand("%:t:r")
        cmd = "gcc " .. filepath .. " -o " .. output .. " && ./" .. output
      elseif filetype == "cpp" then
        local output = vim.fn.expand("%:t:r")
        cmd = "g++ " .. filepath .. " -o " .. output .. " && ./" .. output
      elseif filetype == "lua" then
        cmd = "lua " .. filepath
      elseif filetype == "sh" then
        cmd = "bash " .. filepath
      else
        print("No run command configured for filetype: " .. filetype)
        return
      end

      require("toggleterm").exec(cmd, 1, 12)
    end

    -- Set keymaps
    vim.keymap.set("n", "<leader>r", run_code, { desc = "Run code" })
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
  end
}
