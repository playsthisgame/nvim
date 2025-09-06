return {
  "mluders/comfy-line-numbers.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Show relative line numbers
    relative_line_numbers = true,
    -- Highlight the current line number
    highlight_current_line = true,
    -- Colors optimized for Gruvbox Dark Medium
    colors = {
      -- Current line number
      current_line = "#fabd2f", -- Gruvbox bright yellow
      -- Close line numbers (1-3 lines away)
      close = "#a89984", -- Gruvbox gray
      -- Medium distance line numbers (4-10 lines away)
      medium = "#665c54", -- Gruvbox dark gray
      -- Far line numbers (11+ lines away)
      far = "#3c3836", -- Gruvbox very dark gray
    },
    -- Distance thresholds for color changes
    distance = {
      close = 3,
      medium = 10,
    },
    -- Smooth transitions
    smooth_transitions = true,
    -- Animation duration in milliseconds
    transition_duration = 200,
    -- Enable fading effect
    enable_fading = true,
    -- Minimum opacity for farthest numbers
    min_opacity = 0.4,
    -- Update frequency (lower = more responsive)
    update_frequency = 100,
    -- Filetypes to exclude
    excluded_filetypes = {
      "help",
      "dashboard", 
      "neo-tree",
      "Trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
      "alpha",
      "startify",
    },
  },
  config = function(_, opts)
    require("comfy-line-numbers").setup(opts)
  end,
}
