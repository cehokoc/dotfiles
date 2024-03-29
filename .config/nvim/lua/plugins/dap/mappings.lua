local opts = { noremap = true, silent = true }
map("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", opts)
map("n", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", opts)
map("n", "<F11>", "<cmd>lua require'dap'.step_into()<CR>", opts)
map("n", "<F12>", "<cmd>lua require'dap'.step_out()<CR>", opts)
map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
map("n", "<leader>dlp", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l", opts)
map("n", "<leader>dl", "<cmd>lua require'dap'.repl.run_last()<CR>", opts)
map(
	"n",
	"<leader>di",
	"<cmd>lua require'dap.ui.variables'.hover(function () return vim.fn.expand(\"<cexpr>\") end)<CR>",
	opts
)
map("n", "<leader>d?", "<cmd>lua require'dap.ui.variables'.scopes()<CR>", opts)
map("n", "<leader>de", "<cmd>lua require'dap'.set_exception_breakpoints({\"all\"})<CR>", opts)
