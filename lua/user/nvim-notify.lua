local notify = require("notify")

vim.notify = notify

notify.setup({
	background_colour = "FloatShadow",
	timeout = 3000,
	stages = "slide",
})
