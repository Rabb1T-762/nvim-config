vim.g.maplocalleader = ";"
vim.g.mapleader = " "


-- open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- open nvim config folder 
vim.api.nvim_set_keymap('n', '<leader>ev', [[:Vexplore ~/.config/nvim<CR>]], { noremap = true, silent = true })

-- Move the selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- make current file executable
vim.keymap.set("n", "<leader>x", ":!chmod +x %<CR>")

-- greatest remap ever
-- pastes from system clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yanks to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes to system clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- makes <C-c> behave like <Esc>
vim.keymap.set("i", "<C-c>", "<Esc>")

-- launches a file search and will open a new tmux window with that project
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- format current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quickfix list commands
vim.keymap.set("n", "<leader>o", "<cmd>copen<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>h", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>lprev<CR>zz")

-- deletes visual selection and puts you in insert mode at the end of that selection
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- reloads current file to pull changes into vim
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- TEXT MANIPULATIONS

-- wrap a word in double quotes
vim.keymap.set("n", '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel')
-- wrap a word in single quotes
vim.keymap.set("n", "<leader>'", "viw<esc>a'<esc>bi'<esc>lel")
-- wrap a word in parentheses
vim.keymap.set("n", "<leader>(", "viw<esc>a)<esc>bi(<esc>lel")
-- wrap a word in square brackets
vim.keymap.set("n", "<leader>[", "viw<esc>a]<esc>bi[<esc>lel")
-- wrap a word in braces
vim.keymap.set("n", "<leader>{", "viw<esc>a}<esc>bi{<esc>lel")

-- wrap a selection in double quotes
vim.keymap.set("v", '<leader>"', '<esc>`>a"<esc>`<i"<esc>`>ll')
-- wrap a selection in single quotes
vim.keymap.set("v", "<leader>'", "<esc>`>a'<esc>`<i'<esc>`>ll")
-- wrap a selection in parentheses
vim.keymap.set("v", "<leader>(", "<esc>`>a)<esc>`<i(<esc>`>ll")
-- wrap a selection in square brackets 
vim.keymap.set("v", "<leader>[", "<esc>`>a]<esc>`<i[<esc>`>ll")
-- wrap a selection in braces
vim.keymap.set("v", "<leader>{", "<esc>`>a}<esc>`<i{<esc>`>ll")
