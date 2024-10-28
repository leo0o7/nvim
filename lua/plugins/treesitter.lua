return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				sync_install = false,
				-- ignore_install = { "javascript" },
				modules = {},
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
				auto_install = true,
				ensure_installed = {
					"c",
					"html",
					"javascript",
					"java",
					"json",
					"lua",
					"luadoc",
					"luap",
					"markdown",
					"markdown_inline",
					"python",
					"query",
					"regex",
					"tsx",
					"typescript",
					"vim",
					"vimdoc",
					"yaml",
					"rust",
					"go",
					"gomod",
					"gowork",
					"gosum",
					"terraform",
					"proto",
				},
			})
		end,
	},
}
