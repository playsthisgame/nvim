return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      always_show_bufferline = true, -- Always show (even with one buffer)
      show_buffer_icons = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      show_tab_indicators = false,
      custom_filter = function(buf_number, buf_numbers)
        -- Only show the current buffer
        return buf_number == vim.api.nvim_get_current_buf()
      end,
    },
  },
}
