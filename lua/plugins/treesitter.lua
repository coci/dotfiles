return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({

			ensure_installed = {
				"lua",
				"python",
				"go",
				"sql",
				"make",
				"dockerfile",
				"yaml",
                "rust",
                "c",
			},

			sync_install = true,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
