return {
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
			checkOnSave = {
				allFeatures = true,
				command = "clippy",
			},
			lens = {
				enable = true,
			},
			-- proMacro = {
			-- 	ignored = {
			-- 		["async-trait"] = { "async_trait" },
			-- 		["napi-derive"] = { "napi" },
			-- 		["async-recursion"] = { "async_recursion" },
			-- 	},
			-- },
		},
	},
}
