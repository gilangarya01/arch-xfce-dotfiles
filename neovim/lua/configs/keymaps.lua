local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- My Custom
map("i", "jj", "<ESC>") -- Normal mode
map("n", "<C-a>", "ggVG") -- Select all
map("n", "<leader>qq", ":qall<CR>") -- Quit Neovim
map("n", "<C-s>", ":lua vim.lsp.buf.format()<CR>:w<CR>", {})
-- Save file
map("n", "<leader>fn", ":enew<CR>") -- Create New file
map("n", "<leader>km", ":edit ~/.config/nvim/lua/configs/keymaps.lua<CR>") -- Edit keymaps
map("n", "<leader>lz", ":Lazy<CR>") -- Lazy

map("n", "<leader>bb", ":Ex<CR>") -- Explorer
map("n", "<leader>bx", ":b#<CR>") -- Exit

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")

-- LSP
map("n", "K", vim.lsp.buf.hover, {})
map("n", "<leader>gd", vim.lsp.buf.definition, {})
map("n", "<leader>gr", vim.lsp.buf.references, {})
map("n", "<leader>ca", vim.lsp.buf.code_action, {})
