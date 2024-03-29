require("kommentary.config").configure_language("default", {
	prefer_single_line_comments = true,
	--[[ single_line_comment_string = "auto",
	multi_line_comment_strings = "auto", ]]
	--[[ hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end, ]]
})

require("kommentary.config").configure_language("svelte", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	prefer_single_line_comments = true,
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

require("kommentary.config").configure_language("html", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	prefer_single_line_comments = true,
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

require("kommentary.config").configure_language("vue", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	prefer_single_line_comments = true,
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

require("kommentary.config").configure_language("javascript", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	prefer_single_line_comments = true,
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

require("kommentary.config").configure_language("tsx", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	prefer_single_line_comments = true,
	hook_function = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

