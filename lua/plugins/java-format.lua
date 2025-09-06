return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts.settings = opts.settings or {}
      opts.settings.java = opts.settings.java or {}
      
      -- Configure jdtls to use your eclipse style
      opts.settings.java.format = {
        enabled = true,
        settings = {
          url = vim.fn.stdpath("config") .. "/eclipse-java-style.xml",
          profile = "Default",
        },
      }
      
      return opts
    end,
  },
}
