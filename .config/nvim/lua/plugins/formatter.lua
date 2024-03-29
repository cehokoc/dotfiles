local function prettier()
	return {
		exe = "prettier",
		args = {
			"--stdin-filepath",
			vim.api.nvim_buf_get_name(0),
			"--single-quote",
		},
		stdin = true,
	}
end
require("formatter").setup({
	logging = false,
	filetype = {
		javascript = {
			prettier
		},
		json = {
			prettier
		},
		rust = {
			-- Rustfmt
			function()
				return { exe = "rustfmt", args = { "--emit=stdout" }, stdin = true }
			end,
		},
		lua = {
			-- luafmt
			function()
				return {
					exe = "stylua",
					args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "-" },
					stdin = true,
				}
			end,
		},
	},
})
