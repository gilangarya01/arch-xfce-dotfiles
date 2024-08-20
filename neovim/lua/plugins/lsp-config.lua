return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		lazy = false,
		config = function()
			require("mason").setup()

			require("mason-lspconfig").setup({
				automatic_installation = true,
				ensure_installed = {
					"cssls",
					"eslint",
					"html",
					"emmet_language_server",
					"tsserver",
					"pyright",
					"tailwindcss",
				},
			})

			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier",
					"isort", -- python formatter
					"black", -- python formatter
					"pylint",
					"eslint_d",
					"stylua", -- lua formatter
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			local servers = {
				"tsserver",
				"cssls",
				"tailwindcss",
				"html",
				"jsonls",
				"eslint",
				"pyright",
				"emmet_language_server",
			}

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end
		end,
	},
}
