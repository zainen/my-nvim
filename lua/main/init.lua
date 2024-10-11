-- Set packpath to include the WSL-specific directory
local is_wsl = vim.fn.has('wsl') == 1

if is_wsl then
    vim.o.packpath = vim.o.packpath .. ',' .. vim.fn.expand('~/.local/share/nvim/site')
else
    vim.o.packpath = vim.o.packpath .. ',' .. vim.fn.expand('/mnt/c/Users/Zainen/AppData/Local/nvim-data/site')
end

require("main.remap")
require("main.set")
require("main.packer")
require('main.compare')
require("main.completion")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})

require("mason-lspconfig").setup()
