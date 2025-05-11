return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    -- puedes agregar aquí opciones de configuración de neo-tree
  },
  config = function()
    -- Mapeo de tecla para alternar Neo-tree inteligentemente
    vim.keymap.set('n', '<leader>e', ':Neotree toggle float<CR>', { noremap = true, silent = true })
  end,
}

