local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/AppData/Local/nvim/lua/main/packer.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- new tab
vim.keymap.set('n', '<leader>te', ":tabedit ", opts)
vim.keymap.set('n', '<tab>', ":tabnext<Return>", opts)
vim.keymap.set('n', '<S-tab>', ":tabprev<Return>", opts)

-- split window
vim.keymap.set('n', 'ss', ":split<Return>", opts)
vim.keymap.set('n', 'sv', ":vsplit<Return>", opts)

-- move window
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sl', '<C-w>l')

-- resize window
vim.keymap.set('n', "<C-w><left>", "<C-w><")
vim.keymap.set('n', "<C-w><right>", "<C-w>>")
vim.keymap.set('n', "<C-w><up>", "<C-w>+")
vim.keymap.set('n', "<C-w><down>", "<C-w>-")

-- select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Diagnostics
vim.keymap.set('n', "<C-j>", function()
    vim.diagnostic.goto_next()
end, opts)

-- FloaTerm configuration
vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 <CR>")
vim.keymap.set('n', "<leader>ftn", ":FloatermNext <CR>")
vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
vim.keymap.set('n', "<leader>ftk", ":FloatermKill <CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")

-- Goto Difiniton new tab
vim.keymap.set('n', "<leader>gd", "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", opts)
