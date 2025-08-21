return {
    'Mofiqul/vscode.nvim',
    lazy = false,
    config = function()
        require('vscode').setup({
            transparent = true,
            italic_comments = true,
            italic_inlayhints = true,
            disable_nvimtree_bg = true,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        })
        vim.cmd.colorscheme 'vscode'
    end,
}
