return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope", -- This ensures telescope loads on any Telescope command
  keys = {
    -- Explicitly disable any conflicting git keymaps
    { "<leader>fg", false }, -- Disable the default first

    -- Then add your keymaps
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep Workspace" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find in Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Current Buffer Fuzzy Find" },
    { "<leader>fo", "<cmd>Telescope lsp_document_symbols<cr>", desc = "LSP Document Symbols" },
    { "<leader>fi", "<cmd>Telescope lsp_incoming_calls<cr>", desc = "LSP Incoming Calls" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Find Keymaps" },
    {
      "<leader>fm",
      function()
        require("telescope.builtin").treesitter({ default_text = ":method:" })
      end,
      desc = "Find Methods",
    },
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Find todos" },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
