return {
	"saghen/blink.cmp",
	opts = {
		appearance = {
			-- sets the fallback highlight groups to nvim-cmp's highlight groups
			-- useful for when your theme doesn't support blink.cmp
			-- will be removed in a future release, assuming themes add support
			use_nvim_cmp_as_default = false,
			-- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},
		completion = {
			accept = {
				-- experimental auto-brackets support
				auto_brackets = {
					enabled = true,
				},
			},
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 200,
			},
			ghost_text = {
				enabled = vim.g.ai_cmp,
			},
		},

		-- experimental signature help support
		-- signature = { enabled = true },

		sources = {
			-- adding any nvim-cmp sources here will enable them
			-- with blink.compat
			compat = {},
			default = { "lsp", "path", "snippets", "buffer" },
		},

		cmdline = {
			enabled = false,
		},

		keymap = {
			preset = "enter",
			["<C-y>"] = { "select_and_accept" },
			["<Tab>"] = {
				"select_next",
				"fallback",
			},
			["<S-Tab>"] = {
				"select_prev",
				"fallback",
			},
		},
	},
	-- "hrsh7th/nvim-cmp",
	-- event = "InsertEnter",
	-- dependencies = {
	-- 	-- Snippet Engine & its associated nvim-cmp source
	-- 	"L3MON4D3/LuaSnip",
	-- 	"saadparwaiz1/cmp_luasnip",
	-- 	-- Adds LSP completion capabilities
	-- 	"hrsh7th/cmp-nvim-lsp",
	-- 	"hrsh7th/cmp-path",
	-- 	-- Adds a number of user-friendly snippets
	-- 	"rafamadriz/friendly-snippets",
	-- 	-- Adds vscode-like pictograms
	-- 	"onsails/lspkind.nvim",
	-- },
	-- config = function()
	-- 	local cmp = require("cmp")
	-- 	local luasnip = require("luasnip")
	-- 	require("luasnip.loaders.from_vscode").lazy_load()
	-- 	luasnip.config.setup({})
	--
	-- 	cmp.setup({
	-- 		experimental = { ghost_text = true },
	-- 		snippet = {
	-- 			expand = function(args)
	-- 				luasnip.lsp_expand(args.body)
	-- 			end,
	-- 		},
	-- 		completion = {
	-- 			completeopt = "menu,menuone,noinsert",
	-- 		},
	-- 		mapping = cmp.mapping.preset.insert({
	-- 			["<C-n>"] = cmp.mapping.select_next_item(),
	-- 			["<C-p>"] = cmp.mapping.select_prev_item(),
	-- 			["<C-b>"] = cmp.mapping.scroll_docs(-4),
	-- 			["<C-f>"] = cmp.mapping.scroll_docs(4),
	-- 			["<C-Space>"] = cmp.mapping.complete({}),
	-- 			["<C-y>"] = cmp.mapping.confirm({ select = true }),
	-- 			["<CR>"] = cmp.mapping.confirm({
	-- 				behavior = cmp.ConfirmBehavior.Replace,
	-- 				select = true,
	-- 			}),
	-- 			["<Tab>"] = cmp.mapping(function(fallback)
	-- 				if cmp.visible() then
	-- 					cmp.select_next_item()
	-- 				elseif luasnip.expand_or_locally_jumpable() then
	-- 					luasnip.expand_or_jump()
	-- 				else
	-- 					fallback()
	-- 				end
	-- 			end, { "i", "s" }),
	-- 			["<S-Tab>"] = cmp.mapping(function(fallback)
	-- 				if cmp.visible() then
	-- 					cmp.select_prev_item()
	-- 				elseif luasnip.locally_jumpable(-1) then
	-- 					luasnip.jump(-1)
	-- 				else
	-- 					fallback()
	-- 				end
	-- 			end, { "i", "s" }),
	-- 		}),
	-- 		window = {
	-- 			completion = cmp.config.window.bordered(),
	-- 			documentation = cmp.config.window.bordered(),
	-- 		},
	-- 		sources = {
	-- 			{ name = "codeium" },
	-- 			{ name = "nvim_lsp" },
	-- 			{ name = "nvim_lua" },
	-- 			{ name = "luasnip" },
	-- 			{ name = "buffer" },
	-- 			{ name = "path" },
	-- 			{ name = "calc" },
	-- 			{ name = "emoji" },
	-- 			{ name = "treesitter" },
	-- 			{ name = "crates" },
	-- 			{ name = "tmux" },
	-- 		},
	-- 		formatting = {
	-- 			format = function(entry, vim_item)
	-- 				local lspkind_ok, lspkind = pcall(require, "lspkind")
	-- 				if not lspkind_ok then
	-- 					-- From kind_icons array
	-- 					vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
	-- 					-- Source
	-- 					vim_item.menu = ({
	-- 						codeium = "[Codeium]",
	-- 						nvim_lsp = "[LSP]",
	-- 						nvim_lua = "[Lua]",
	-- 						luasnip = "[LuaSnip]",
	-- 						buffer = "[Buffer]",
	-- 						latex_symbols = "[LaTeX]",
	-- 					})[entry.source.name]
	-- 					return vim_item
	-- 				else
	-- 					-- From lspkind
	-- 					return lspkind.cmp_format()(entry, vim_item)
	-- 				end
	-- 			end,
	-- 		},
	-- 	})
	-- end,
}
