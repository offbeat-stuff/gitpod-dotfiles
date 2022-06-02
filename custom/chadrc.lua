-- remove this if you dont use custom.init.lua at all
require("custom")

local M = {}

M.options = {
	user = function()
		vim.cmd("set nu rnu")
	end,
}

M.plugins = {
	user = require("custom.plugins"),
	remove = {
		"akinsho/bufferline.nvim",
		"feline-nvim/feline.nvim",
	},
	override = {},
        options = {
          lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
          },
        },
}

M.ui = {
	theme = "rxyhn",
}

return M
