local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window instead of side bar
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	--Utility plugs

  use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" } -- Useful lua functions used by lots of plugins
  use { "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" } -- Autopairs, integrates with both cmp and treesitter
	use({ "numToStr/Comment.nvim", commit = "2c26a00f32b190390b664e56e32fd5347613b9e2" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "88343753dbe81c227a1c1fd2c8d764afb8d36269" })
	use({ "kyazdani42/nvim-web-devicons", commit = "8d2c5337f0a2d0a17de8e751876eeb192b32310e" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "akinsho/bufferline.nvim", commit = "c78b3ecf9539a719828bca82fc7ddb9b3ba0c353" })
	use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
	use({ "nvim-lualine/lualine.nvim", commit = "3362b28f917acc37538b1047f187ff1b5645ecdd" })
	use({ "akinsho/toggleterm.nvim", commit = "aaeed9e02167c5e8f00f25156895a6fd95403af8" })
	use({ "ahmedkhalf/project.nvim", commit = "541115e762764bc44d7d3bf501b6e367842d3d4f" })
	use({ "lukas-reineke/indent-blankline.nvim", commit = "6177a59552e35dfb69e1493fd68194e673dc3ee2" })
	use({ "goolord/alpha-nvim", commit = "ef27a59e5b4d7b1c2fe1950da3fe5b1c5f3b4c94" })
	use("mhinz/vim-startify")
	use("folke/which-key.nvim") -- helpful keybindings guider
	use({
		"RRethy/vim-hexokinase",
		run = "cd ~/.local/share/nvim/site/pack/packer/opt/vim-hexokinase && make hexokinase",
		cmd = { "HexokinaseToggle" },
	}) --mainly for css, flutter previewing the colors
	use({ "p00f/nvim-ts-rainbow" }) --to get rainbow parenthesis
	use({
		"notjedi/nvim-rooter.lua",
	}) --for making the cwd the root
	use("lewis6991/impatient.nvim") --for reducing startup time of neovim by implementing cache
	use({ --a clean and minimal undo tree
		"mbbill/undotree",
		-- config = function()
		-- 	require("user.undotree")
		-- end,
		branch = "search",
		cmd = { "UndotreeShow", "UndotreeToggle" },
		keys = { "<leader>u" },
	})

	-- use({
	-- 	"rcarriga/nvim-notify",
	-- }) --fancy notifications screen

	-- Colorschemes
	use({ "lunarvim/darkplus.nvim" })
	use("navarasu/onedark.nvim")
	use("rmehri01/onenord.nvim")
	use("EdenEast/nightfox.nvim") -- Packer
	use("rafamadriz/neon")
	use("rebelot/kanagawa.nvim")
	use("Th3Whit3Wolf/space-nvim")
	use("lunarvim/Onedarker.nvim")
  use 'folke/tokyonight.nvim'

 -- sgs autocomplete plugins 
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"


	-- Autocomplete and suggestions
	-- use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	-- use({ "hrsh7th/cmp-buffer"}) -- buffer completions
	-- use({ "hrsh7th/cmp-path" }) -- path completions
	-- use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	-- -- use({ "hrsh7th/cmp-nvim-lsp" })
 --  -- use { "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" }
	-- use({ "hrsh7th/cmp-nvim-lua"}) --for lua completion
	use({
		"saecki/crates.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	}) --for crates autocomplete in rust
	use({
		"David-Kunz/cmp-npm",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	}) -- for npm packages and versions autocomplete

	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	-- use({ "williamboman/nvim-lsp-installer" }) -- simple to use language server installer
  use { "williamboman/mason.nvim", commit = "c2002d7a6b5a72ba02388548cfaf420b864fbc12"} -- simple to use language server installer
  use { "williamboman/mason-lspconfig.nvim", commit = "0051870dd728f4988110a1b2d47f4a4510213e31" }
	use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate", commit = "c82e6d04f27a41d7fdcad9be0bce5bb59fcb78e5" })



	--flutter tools for running using debugging etc
	use({ "akinsho/flutter-tools.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use("tamago324/nlsp-settings.nvim") --lsp support for json and yaml files




	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	-- use { "nvim-telescope/telescope-media-files.nvim" }

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
	})

	-- Git
	use({ "lewis6991/gitsigns.nvim" })

	-- DAP
	use({ "mfussenegger/nvim-dap", commit = "014ebd53612cfd42ac8c131e6cec7c194572f21d" })
	use({ "rcarriga/nvim-dap-ui", commit = "d76d6594374fb54abf2d94d6a320f3fd6e9bb2f7" })
	use({ "ravenxrz/DAPInstall.nvim", commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de" })


	--arhamiser plugin for a beautiful ui
	-- use({
	-- 	"arsham/arshamiser.nvim",
	-- 	requires = {
	-- 		"arsham/arshlib.nvim",
	-- 		"famiu/feline.nvim",
	-- 		"rebelot/heirline.nvim",
	-- 		"kyazdani42/nvim-web-devicons",
	-- 		"j-hui/fidget.nvim",
	-- 		"nanotee/sqls.nvim",
	-- 	},
	-- 	-- config = function()
	-- 	--   require("arshlib.quick").autocmd({ events = "UIEnter", pattern = "*",
	-- 	--     callback = function()
	-- 	--       vim.api.nvim_command("colorscheme darkplus")
	-- 	--                 -- vim.api.nvim_command("colorscheme onedark")
	-- 	--
	-- 	--       -- require("arshamiser.feliniser")
	-- 	--       -- or:
	-- 	--       require("arshamiser.heirliniser")
	-- 	--       _G.custom_foldtext = require("arshamiser.folding").foldtext
	-- 	--       vim.opt.foldtext = "v:lua.custom_foldtext()"
	-- 	--     end,
	-- 	--   })
	-- 	-- end,
	-- })

	--plugins specifically for competitive coding
	use("searleser97/cpbooster.vim")
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
