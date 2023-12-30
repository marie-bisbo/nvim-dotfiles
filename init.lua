require ("source")
print("Hello")

vim.wo.relativenumber = true
vim.keymap.set("n", "<leader>b", "<cmd> <Esc>:Lex<cr> :vertical resize 30<cr>")
