-- return {
--     "supermaven-inc/supermaven-nvim",
--     config = function()
--         require("supermaven-nvim").setup({
--             keymaps = {
--                 accept_suggestion = "<Tab>",
--                 clear_suggestion = "<C-]>",
--                 accept_word = "<S-Tab>",
--             },
-- 	    color = {
-- 		    suggestion_color = "#9a9a9a",
-- 		    cterm = 244,
--
-- 	    },
-- 	    log_level = "off",
--             disable_inline_completion = false, -- disables inline completion for use with cmp
--             disable_keymaps = false, -- disables built in keymaps for more manual control
--             condition = function()
--                 return false
--             end
--         })
--     end,
-- }

return {
    "github/copilot.vim",
}
