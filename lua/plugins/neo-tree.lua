-- lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,      -- show filtered items (hidden files)
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
