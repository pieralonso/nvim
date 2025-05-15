return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}},
  },
  lazy = false,
  opts = {
  },
  config = function()

    local function find_neotree_win()
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        local ft = vim.api.nvim_buf_get_option(buf, "filetype")
        if ft == "neo-tree" then
          return win
        end
      end
      return nil
    end


    local function smart_toggle()
      local neotree_win = find_neotree_win()
      if neotree_win then
        if vim.api.nvim_get_current_win() == neotree_win then
          vim.cmd("wincmd p")
        else
          vim.api.nvim_set_current_win(neotree_win)
        end
      else
        vim.cmd("Neotree reveal right")
      end
    end

    local function open_close_neotree()
      local neotree_win = find_neotree_win()
      if neotree_win then
        vim.cmd("Neotree close")
      else
        vim.cmd("Neotree reveal right")
      end
    end

    vim.keymap.set('n', '<leader>e', smart_toggle, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>E', open_close_neotree, { noremap = true, silent = true })
  end,
}

