return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  config = function()
    require("lsp_lines").setup()
    
    -- Disable virtual_text since it's redundant due to lsp_lines
    vim.diagnostic.config({
      virtual_text = false,
    })
    
    -- Optional: Toggle function for lsp_lines
    vim.keymap.set("", "<leader>l", function()
      local config = vim.diagnostic.config() or {}
      if config.virtual_text then
        vim.diagnostic.config({ virtual_text = false })
        require("lsp_lines").toggle()
      else
        vim.diagnostic.config({ virtual_text = true })
        require("lsp_lines").toggle()
      end
    end, { desc = "Toggle lsp_lines" })
  end,
}
