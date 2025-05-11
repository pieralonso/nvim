-- return {
--     "rachartier/tiny-inline-diagnostic.nvim",
--     event = "VeryLazy", -- Or `LspAttach`
--     priority = 1000, -- needs to be loaded in first
--     config = function()
--         require('tiny-inline-diagnostic').setup()
--         vim.diagnostic.config({ virtual_text = false }) -- Only if needed in your configuration, if you already have native LSP diagnostics
--     end
-- }
return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy", -- O puedes usar "LspAttach" si prefieres
  priority = 1000, -- Asegúrate de que se cargue primero
  config = function()
    require("tiny-inline-diagnostic").setup({
      options = {
        multilines = {
          enabled = true,
          always_show = true, -- Mostrar siempre los errores en todas las líneas
        },
        show_all_diags_on_cursorline = true, -- Mostrar todos los diagnósticos en la línea del cursor
      },
    })
    vim.diagnostic.config({ virtual_text = false }) -- Desactivar el texto virtual predeterminado de Neovim
  end,
}

