require("lualine").setup({
	options = {
		icons_enabled = true,
		-- theme = "github",
	},
	sections = {
		lualine_a = {
			{
				"filename",
				path = 1,
			},
		},
	},
})
