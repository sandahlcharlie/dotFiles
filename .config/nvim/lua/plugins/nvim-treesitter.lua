return {
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        branch = 'main',
        build = ":TSUpdate",
        config = function()
            local parser_installed = {
                "python", "go", "c", "lua", "vim", "vimdoc", "query",
                "markdown_inline", "markdown", "javascript", "typescript",
                "json", "css", "bash", "zsh", "java", "rust", "r", "sql",
            }
            require'nvim-treesitter'.setup {
                install_dir = vim.fn.stdpath('data') .. '/data/nvim-treesitter'
            }
            
            -- Install parsers asynchronously
            require("nvim-treesitter").install(parser_installed)
            
            -- Enable treesitter features
            vim.defer_fn(function()
                vim.api.nvim_create_autocmd("FileType", {
                    desc = "Enable treesitter highlighting, indentation, and folding",
                    callback = function()
                        pcall(vim.treesitter.start)
                        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
                        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                    end,
                })
            end, 2000)
        end
    }
}
