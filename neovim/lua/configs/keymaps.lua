vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

--[[ 
-- Comment
`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment 
]]

-- My Custom
map("i", "jj", "<ESC>") -- Normal mode
map("n", "<C-a>", "ggVG") -- Select all
map("n", "<leader>qq", ":qall<CR>") -- Quit Neovim
map("n", "<C-s>", ":lua vim.lsp.buf.format()<CR>:w<CR>", {})
-- Save file
map("n", "<leader>fn", ":enew<CR>") -- Create New file
map("n", "<leader>km", ":edit ~/.config/nvim/lua/configs/keymaps.lua<CR>") -- Edit keymaps
map("n", "<leader>lz", ":Lazy<CR>") -- Lazy
-- Split
map("n", "<leader>ss", ":split<CR>")
map("n", "<leader>sv", ":vsplit<CR>")

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

-- NeoTree
map("n", "<leader>bb", "<CMD>Neotree toggle<CR>") -- Toggle Tree
map("n", "<leader>br", "<CMD>Neotree focus<CR>") -- Focus Tree
