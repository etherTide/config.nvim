local spec = function(mason_tools) {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
  },
  opts = {
    integrations = { ['mason-lspconfig'] = true },
    -- NOTE: mason_tools defined in ./init.lua
    ensure_installed = mason_tools
  },
}
end

return spec
