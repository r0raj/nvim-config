require("nvim-tree").setup({
        disable_netrw = true,
        view = {
            side = "left",
            width = "30",
            adaptive_size = true,
        },
    })

-- Bind Ctrl+n to open filetree in the current file directory
vim.keymap.set("n","<c-n>", ":NvimTreeFindFileToggle<CR>")
