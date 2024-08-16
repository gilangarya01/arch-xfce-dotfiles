return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- config
			theme = "doom",
			config = {
				header = {
					"                                                  ",
					"                                                  ",
					"                                                  ",
					"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
					"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
					"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
					"██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
					"██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
					"╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
					"                                                  ",
					"                                                  ",
				},
				center = {
					{
						icon = "  ",
						desc = "Find File                      SPC f f",
						action = "Telescope find_files",
						shortcut = "SPC f f",
					},
					{
						icon = "  ",
						desc = "New File                       SPC f n",
						action = "enew",
						shortcut = "SPC f n",
					},
					{
						icon = "  ",
						desc = "Lazy                           SPC l z",
						action = "Lazy",
						shortcut = "SPC l z",
					},
					{
						icon = "  ",
						desc = "Edit Keymaps                   SPC k m",
						action = "edit ~/.config/nvim/lua/configs/keymaps.lua",
						shortcut = "SPC k m",
					},
					{
						icon = "  ",
						desc = "Quit                           SPC q q",
						action = "qall",
						shortcut = "SPC q",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
