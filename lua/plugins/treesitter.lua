return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc",
        "typescript", "query", "javascript", "html", "css", "astro", "tsx", "python", "graphql", "svelte" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = false },
    })
  end

}
