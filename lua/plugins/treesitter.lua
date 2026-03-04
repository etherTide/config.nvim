local spec = function(ts_parsers)
  return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      -- NOTE: ts_parsers defined in ./init.lua
      ensure_installed = ts_parsers
    },
  }

return spec
