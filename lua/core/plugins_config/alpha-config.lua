-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
local fortune = require("alpha.fortune")
local myQuotes = require("core.myQuotes")
dashboard.section.header.val = {
    [[]],
    [[]],
    [[]],
    [[]],
    [[]],
    [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
    [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
    [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
    [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
    [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
    [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

 dashboard.section.buttons.val = {
   dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("f", "󰱼  Find file", ":Telescope find_files <CR>"),
   dashboard.button("r", "󱋡  Recently used files", ":Telescope oldfiles <CR>"),
   dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
   dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
   dashboard.button("q", "󰿅  Quit Neovim", ":qa<CR>"),
}

local options = {
    max_width = 54,
    fortune_list = myQuotes,
}

dashboard.section.footer.val = fortune(options)
alpha.setup(dashboard.opts)
