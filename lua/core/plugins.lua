require("lazy").setup({
	-- gruvbox theme    
	{ "ellisonleao/gruvbox.nvim",
    	priority = 1000 ,
    	config = true,
    	opts = ...
	},

	-- Useful icons pack
	{ "nvim-tree/nvim-web-devicons", },

	-- Nvim-tree file explorer
	{
  		"nvim-tree/nvim-tree.lua",
  		version = "*",
  		lazy = false,
  		dependencies = {
    	"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
    	require("nvim-tree").setup {}
  	end,
	},

	--Lualine statusline
	{
    	'nvim-lualine/lualine.nvim',
    	dependencies = { 'nvim-tree/nvim-web-devicons' }
	},

    --Treesitter syntax highlighting 
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

	-- Telescope fuzzy file search
	{
    	"nvim-telescope/telescope.nvim", tag = "0.1.6",
      	dependencies = { "nvim-lua/plenary.nvim" }
	},

    -- LSP config tools and Mason lsp package manager
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig", 
    },

    -- nvim-cmp completion engine
    {
        "hrsh7th/nvim-cmp",
        dependencies = {"hrsh7th/cmp-nvim-lsp"}
    },

    -- luasnip snippet engine
    {
        "L3MON4D3/LuaSnip",
	    -- follow latest release.
	    version = "v2.*",
	    -- install jsregexp (optional!).
	    build = "make install_jsregexp"
    },

    -- luasnip completion source for nvim-cmp
    { 'saadparwaiz1/cmp_luasnip' },

    -- TODO comment highlighting
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {

        }
    },

    -- vim-commentary easy comments tool
    {
        "tpope/vim-commentary"
    },

    --nvim autopairing plugin 
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        dependencies = {"hrsh7th/nvim-cmp"}
        -- use opts = {} for passing setup options
        -- this is equalent to setup({}) function
    },

    --nvim alpha greeter page
    {
        'goolord/alpha-nvim',
        --requires = {'BlakeJC94/alpha-nvim-fortune'},
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    },

    --nvim which-key custom key bindings manager
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    --catpuccin theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },

    -- gitsigns lua based git decorator
    {
      "lewis6991/gitsigns.nvim",
    },

    -- vim-fugitive git command plugin
    {
        "tpope/vim-fugitive",
    }

})
