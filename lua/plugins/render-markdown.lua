return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    -- Toggle keymaps, `gco` to toggle concealing, `gcr` to toggle rendering
    render_modes = { "n", "c", "t" },
    anti_conceal = {
      -- This will run when rendering is toggled off, it will hide and then show signs
      -- to get rid of any artifacts from concealing
      enabled = true,
    },
    -- Characters that will replace the # at the beginning of headings
    headings = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
    -- Character to use for the horizontal break
    dash = "─",
    -- Character to use for the bullets
    bullets = { "●", "○", "◆", "◇" },
    checkbox = {
      -- Character that will replace the [ ] in unchecked checkboxes
      unchecked = "󰄱 ",
      -- Character that will replace the [x] in checked checkboxes  
      checked = "󰱒 ",
    },
    -- Character that will replace the > at the beginning of block quotes
    quote = "┃",
    -- See :h 'conceallevel' for more information about what this does
    conceal = {
      -- conceallevel used for rendering when not being edited
      rendered = 3,
      -- conceallevel used for rendering when being edited
      editing = 2,
    },
    -- Highlight groups optimized for Gruvbox Dark Medium
    highlights = {
      heading = {
        -- Background highlights for headings using Gruvbox colors
        backgrounds = { "GruvboxRedBg", "GruvboxYellowBg", "GruvboxBlueBg", "GruvboxPurpleBg", "GruvboxAquaBg", "GruvboxGreenBg" },
        -- Foreground highlights for headings
        foregrounds = { "GruvboxRed", "GruvboxYellow", "GruvboxBlue", "GruvboxPurple", "GruvboxAqua", "GruvboxGreen" },
      },
      -- Dash line using Gruvbox gray
      dash = "GruvboxGray",
      -- Quote character using Gruvbox orange
      quote = "GruvboxOrange",
      -- Checkbox colors
      checkbox = {
        unchecked = "GruvboxGray",
        checked = "GruvboxGreen",
      },
      -- Bullet points using Gruvbox yellow
      bullet = "GruvboxYellow",
      -- Table styling
      table = {
        head = "GruvboxBlue",
        row = "GruvboxFg4",
      },
      -- LaTeX blocks
      latex = "GruvboxPurple",
      -- Inline code
      code_inline = "GruvboxAqua",
      -- Code blocks with subtle background
      code_block = "GruvboxBg1",
    },
    -- Configuration for different capture groups
    win_options = {
      -- See :h localleader, typically set to `\`
      conceallevel = {
        -- Used when not being edited
        rendered = 3,
        -- Used when being edited
        editing = 2,
      },
      -- See :h concealcursor
      concealcursor = {
        -- Used when not being edited
        rendered = "",
        -- Used when being edited  
        editing = "nc",
      },
    },
  },
  ft = { "markdown", "Avante" },
  dependencies = { 
    "nvim-treesitter/nvim-treesitter", 
    "nvim-tree/nvim-web-devicons" -- Optional: for prettier icons
  },
}
