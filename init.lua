require("config.set")
require("config.lazy")
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost" }, {
    callback = function()
        if vim.bo.modified then -- Save only if the file is modified
            vim.cmd('Prettier') -- Aplica Prettier
            vim.cmd("silent! update") -- 'update' saves only if needed, 'silent!' hides errors
        end
    end,
})
