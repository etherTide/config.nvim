--[[
  to add new LSPs:
    - add the binary to shell PATH
      - `export /path/to/foo-binary`
    - configure the lsp
      - ```lua
        -- using vim api function
        vim.lsp.config({ 'foo', {cmd = {'binary'}} })
        ```
      - or
        ```lua
        -- in a file, eg after/lsp/foo.lua
        return {
          cmd = {'binary'},
        }
        vim.lsp.enable(...)
--]]

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
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
  }
}

