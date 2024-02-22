-- console log the folder
print("loading lazy.lua");

local plugins = {

-- plugins/telescope.lua:
{'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }},

    -- -- REPL environment
    -- 'Olical/conjure'

    -- -- racket integration
    -- use 'wlangstroth/vim-racket'

-- My Themes
    {'rose-pine/neovim', name = 'rose-pine'},
    {'Shatur/neovim-ayu', name = 'ayu'},
    {'ellisonleao/gruvbox.nvim', name = 'gruvbox'},
    {'rebelot/kanagawa.nvim', name = 'kanagawa'},
    {'folke/tokyonight.nvim', name = 'tokyonight'},

-- treesitter for incremental tree parsing and better syntax highlighting
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-treesitter/playground',
    'nvim-lua/plenary.nvim',

-- harpoon for binding files to shortcut keys for easy access
    'ThePrimeagen/harpoon',

-- access the undo/redo AST
    'mbbill/undotree',

-- vim git integration
    'tpope/vim-fugitive',

-- adds a symbol where you use enter
    'lukas-reineke/indent-blankline.nvim',

--  use('Yggdroot/indentLine')

    -- lsp integration
    'VonHeikemen/lsp-zero.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim', 
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',

    -- html snipits
    {'mattn/emmet-vim',
        build = function()
            print("setting emmet leader key")
            vim.g.user_emmet_leader_key = '<C-I>'
        end
    },
    -- shortcuts to comment diffent file types
    'tpope/vim-commentary',

    -- Chat gippity and copilot
    'github/copilot.vim',
    {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
      debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
      disable_extra_info = 'no', -- Disable extra information (e.g: system prompt) in the response.
      language = "English" -- Copilot answer language settings when using default prompts. Default language is English.
      -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
      -- temperature = 0.1,
    },
    build = function()
      vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
    end,
    event = "VeryLazy",
    keys = {
      { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
      { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
      {
        "<leader>ccT",
        "<cmd>CopilotChatVsplitToggle<cr>",
        desc = "CopilotChat - Toggle Vsplit", -- Toggle vertical split
      },
      {
        "<leader>ccv",
        ":CopilotChatVisual",
        mode = "x",
        desc = "CopilotChat - Open in vertical split",
      },
      {
        "<leader>ccx",
        ":CopilotChatInPlace<cr>",
        mode = "x",
        desc = "CopilotChat - Run in-place code",
      },
      {
        "<leader>ccf",
        "<cmd>CopilotChatFixDiagnostic<cr>", -- Get a fix for the diagnostic message under the cursor.
        desc = "CopilotChat - Fix diagnostic",
      },
      {
        "<leader>ccr",
        "<cmd>CopilotChatReset<cr>", -- Reset chat history and clear buffer.
        desc = "CopilotChat - Reset chat history and clear buffer",
      }
    },
  },
}

local opts = {}

require("lazy").setup(plugins, opts);
