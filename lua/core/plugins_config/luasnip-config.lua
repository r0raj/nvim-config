local ls = require("luasnip")

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/snippets/"})

vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]])

ls.config.set_config({
    history = true, -- Keep last snippet local to jump back
    updateevents = "TextChanged,TextChangedI", -- update change as you type when using functions
    enable_autosnippets = true,
})

--Luasnip related shortcuts
vim.keymap.set({"i","s"}, "<C-k>", function ()
        if ls.expand_or_jumpable() then
            ls.expand_or_jump()
        end
    end,
    {silent = true})

vim.keymap.set({"i","s"}, "<C-j>", function ()
        if ls.jumpable(-1) then
            ls.jump(-1)
        end
    end,
    {silent = true})

--vim.keymap.set("n", "<Leader><CR>", "<cmd>LuaSnipEdit<cr>", { silent = true, noremap = true })
