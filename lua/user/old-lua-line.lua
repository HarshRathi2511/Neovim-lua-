local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local branch = {
	"branch",
	icons_enabled = true,
	icon = "%#SLGitIcon#" .. " " .. "%*" .. "%#SLBranchName#",
	-- color = "Constant",
	colored = false,
	padding = -1,
	-- cond = hide_in_width_99,
	fmt = function(str)
		if str == "" or str == nil then
			return "!=vcs"
		end

		return str
	end,
}

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		section_separators = { "", "" },
		component_separators = { "", "" },
		disabled_filetypes = {},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = {
			{
				"diagnostics",
				sources = { "nvim_lsp" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
		},
		lualine_x = {
			-- {
			-- 	"diagnostics",
			-- 	sources = { "nvim_lsp" },
			-- 	symbols = { error = " ", warn = " ", info = " ", hint = " " },
			-- },
			"encoding",
			"formatter",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = { "fugitive" },
})
