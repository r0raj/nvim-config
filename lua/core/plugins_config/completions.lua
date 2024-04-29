local cmp = require("cmp")
local ls = require("luasnip")
cmp.setup({
      -- mapping was directly taken from the nvim-cmp repo
      mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4),{ "i", 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4),{ 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
      expand = function(args)
        ls.lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    sources = cmp.config.sources({
        {name = "luasnip",keyword_length = 4},
        {name = "nvim_lsp",keyword_length = 4,max_item_count = 6},
    }, {
        { name = "buffer",keyword_length = 4,max_item_count = 6},
    }),
})
