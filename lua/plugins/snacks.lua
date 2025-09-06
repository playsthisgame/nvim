return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.picker = opts.picker or {}
    opts.picker.sources = opts.picker.sources or {}
    opts.picker.sources.explorer = opts.picker.sources.explorer or {}
    
    -- Set hidden and ignored to true by default
    opts.picker.sources.explorer.hidden = true
    opts.picker.sources.explorer.ignored = true
    
    return opts
  end,
}
