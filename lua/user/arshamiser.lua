local config_status_ok, arhamiser_config = pcall(require, "arshlib.quick")
if not config_status_ok then
	return
end

arhamiser_config.autocmd({
	events = "UIEnter",
	pattern = "*",
	callback = function()
		-- vim.api.nvim_command("colorscheme darkplus")
		vim.api.nvim_command("colorscheme onedark")

		-- require("arshamiser.feliniser")
		-- or:
		require("arshamiser.heirliniser")
		_G.custom_foldtext = require("arshamiser.folding").foldtext
		vim.opt.foldtext = "v:lua.custom_foldtext()"
	end,
})
