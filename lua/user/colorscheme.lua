-- SAFE LOADING OF COLORSCHEME (IN CASE PLUGIN MANAGER DOES NOT HAVE IT INSTALLED ALREADY)
-- vim.cmd [[
-- try
--   colorscheme falcon
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme default
--   set background=dark
-- endtry
-- ]]
--
-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_transform_colors = false
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_italic_comments = true
-- vim.g.italic_keywords = true
-- vim.g.tokyonight_italic_variables = false
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_dark_float = false
-- vim.g.tokyonight_dark_sidebar = false
-- vim.g.hide_inactive_statusline = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_lualine_bold = true
-- vim.g.tokyonight_terminal_colors = true
-- vim.g.tokyonight_cterm_colors = false
--
-- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { error = "#ff0000", border = "purple" }

-- Load the colorscheme
local colorscheme = "onedark"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end
