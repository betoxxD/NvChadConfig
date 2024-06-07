-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "java_language_server" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- angularls
local util = require "lspconfig.util"
lspconfig.angularls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  root_dir = util.root_pattern "angular.json",
}

-- powershell_es
lspconfig.powershell_es.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  shell = "powershell.exe",
  cmd = { "pwsh", "-NoLogo", "-NoProfile", "-Command", "Invoke-Completion -PowerShellVersion 7 -CommandName $true" },
}
