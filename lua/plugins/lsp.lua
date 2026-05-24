--[[
  to use non-Mason LSPs:
    add the binary to your PATH
    `export /path/to/foo-binary`
    configure the lsp
    ```lua
    -- using vim api function
    vim.lsp.config({ 'foo', {cmd = {'binary'}} })
    ```
    or
    ```lua
    -- in a file, eg after/lsp/foo.lua
    return {
      cmd = {'binary'},
    }
    vim.lsp.enable(...)
--]]

local mason_core = { "mason-org/mason.nvim", opts = {} }

local nvim_lspconfig = "neovim/nvim-lspconfig"

local lazydev = {
  "folke/lazydev.nvim",
  ft = "lua", -- only load on lua files
  opts = {
    library = {
      -- See the configuration section for more details
      -- Load luvit types when the `vim.uv` word is found
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}

return {
  "mason-org/mason-lspconfig.nvim",
  opts = {},
  dependencies = {
    mason_core,
    nvim_lspconfig,
    lazydev,
  },
}
