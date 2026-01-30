-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- nvim-tree
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<leader>ee", ":NvimTreeFindFileToggle<cr>")
vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<cr>")

-- nvim-comment
vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<cr>")

-- render markdown
vim.keymap.set({ "n", "v" }, "<leader>md", ":RenderMarkdown toggle<cr>")
