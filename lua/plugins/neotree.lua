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
    -- Función para alternar el focus de Neo-tree de forma inteligente
    local function ToggleNeoTreeSmart()
      local buftype = vim.api.nvim_buf_get_option(0, "filetype")

      if buftype == "neo-tree" then
        -- Si estamos en Neo-tree, cerrar y volver al buffer anterior
        vim.cmd('Neotree close')
        vim.cmd('wincmd p')
      else
        -- Buscar si hay una ventana con Neo-tree
        local neo_tree_win = nil
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          local buf = vim.api.nvim_win_get_buf(win)
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "neo-tree" then
            neo_tree_win = win
            break
          end
        end

        if neo_tree_win then
          -- Si ya está abierto Neo-tree, enfocar esa ventana
          vim.api.nvim_set_current_win(neo_tree_win)
        else
          -- Si no, abrir Neo-tree
          vim.cmd('Neotree reveal position=right')
        end
      end
    end

    -- Mapeo de tecla para alternar Neo-tree inteligentemente
    vim.keymap.set('n', '<leader>e', ToggleNeoTreeSmart, { noremap = true, silent = true })
  end,
}

