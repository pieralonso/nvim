return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = {
      height = 0.85,
      width = 0.50,
      preview = {
          hidden= true,
        layout = "vertical",
        vertical = "down:45%",
      },
    },
    files = {
      prompt = "Buscar archivos > ",
      cwd_prompt = false,
    },
    grep = {
      prompt = "Buscar texto > ",
      rg_opts = "--hidden --column --line-number --no-heading --color=always --smart-case -g '!{.git,node_modules}/*'",
    },
  },
  keys = {
    { "<leader>p", function() require("fzf-lua").files() end, desc = "FZF: Buscar archivos (como Ctrl+P)" },
    { "<leader>f", function() require("fzf-lua").live_grep() end, desc = "FZF: Buscar texto (Live Grep)" },
    { "<leader>b", function() require("fzf-lua").buffers() end, desc = "FZF: Buffers abiertos" },
    { "<leader>o", function() require("fzf-lua").oldfiles() end, desc = "FZF: Archivos recientes" },
    { "<leader>k", function() require("fzf-lua").keymaps() end, desc = "FZF: Buscar atajos de teclado" },
    { "<leader>gc", function() require("fzf-lua").git_commits() end, desc = "FZF: Git commits" },
    { "<leader>gs", function() require("fzf-lua").git_status() end, desc = "FZF: Git status" },
    { "<leader>gb", function() require("fzf-lua").git_branches() end, desc = "FZF: Git branches" },
    { "<leader>/", function() require("fzf-lua").blines() end, desc = "FZF: Líneas en buffer actual" },
    { "<leader>ds", function() require("fzf-lua").lsp_document_symbols() end, desc = "FZF: Símbolos documento" },
    { "<leader>ws", function() require("fzf-lua").lsp_workspace_symbols() end, desc = "FZF: Símbolos workspace" },
  },
}


