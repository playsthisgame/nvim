return {
	"playsthisgame/java-snippets.nvim",
	-- dir = "/Users/chris/workspace/dev/lua/plugins/java-snippets.nvim", -- Your path
	-- name = "java-snippets",
	config = function()
		local java_snippets = require("java-snippets")

		vim.keymap.set("n", "<leader>jm", function()
			java_snippets.create_main()
		end, { desc = "Create snippet for java main class" })

		vim.keymap.set("n", "<leader>jc", function()
			java_snippets.create_class()
		end, { desc = "Create snippet for new java class" })

		vim.keymap.set("n", "<leader>ji", function()
			java_snippets.create_interface()
		end, { desc = "Create snippet for java interface" })

		vim.keymap.set("n", "<leader>ja", function()
			java_snippets.create_abstract()
		end, { desc = "Create snippet for java abstract class" })

		vim.keymap.set("n", "<leader>je", function()
			java_snippets.create_enum()
		end, { desc = "Create snippet for java enum" })

        vim.keymap.set("n", "<leader>jdt", function()
            java_snippets.show_dependency_tree()
        end, { desc = "Show Maven dependency Tree"})
	end,
}
