-- custom/plugins/init.lua

return {
	["nvim-lualine/lualine.nvim"] = {
		after = "nvim-web-devicons",
		config = function()
			local ok, lualine = pcall(require, "lualine")
			if ok then
				lualine.setup()
			end
		end,
	},
	["romgrk/barbar.nvim"] = {
		after = "nvim-web-devicons",
	},
	["scalameta/nvim-metals"] = {
		ft = "scala",
		after = "plenary.nvim",
		config = function()
			vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach({})]])
		end,
	},
}
