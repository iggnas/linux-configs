vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is installed, if not, install it
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- Prepend lazy.nvim to the runtime path
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with plugins and configurations
require("lazy").setup({
  spec = {
    -- Status line (lualine)
    { 
      'nvim-lualine/lualine.nvim', 
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        require('lualine').setup({
          options = {
            theme = 'onedark',
            section_separators = { '', '' },
            component_separators = { '', '' },
            icons_enabled = false,  -- Disable icons
          },
          sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch' },
            lualine_c = { 'filename' },
            lualine_x = { 'filetype', 'encoding', 'fileformat' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
          },
          extensions = { 'fugitive' },
        })
      end
    },

    -- File Explorer (oil.nvim)
    { 
      'stevearc/oil.nvim', 
      opts = {},
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      config = function()
        -- Require oil to initialize it
        require('oil').setup()

        -- Key mappings for oil.nvim
        vim.api.nvim_set_keymap('n', '<leader>e', ':lua require"oil".open()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>r', ':lua require"oil".refresh()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>n', ':lua require"oil".new_file()<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>d', ':lua require"oil".delete()<CR>', { noremap = true, silent = true })
      end
    },

    -- Treesitter for enhanced syntax highlighting
    { 
      'nvim-treesitter/nvim-treesitter', 
      run = ':TSUpdate',
      event = { 'BufReadPost', 'BufNewFile' },
      config = function()
        require'nvim-treesitter.configs'.setup {
          ensure_installed = "all",
          highlight = { enable = true },
          indent = { enable = true },
          autotag = { enable = true },
        }
      end
    },

    -- Autocompletion (nvim-cmp)
    { 
      'hrsh7th/nvim-cmp', 
      dependencies = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path' },
      event = { 'InsertEnter' },
      config = function()
        local cmp = require'cmp'
        cmp.setup({
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
          mapping = {
            ['<C-p>'] = cmp.mapping.select_prev_item(),
            ['<C-n>'] = cmp.mapping.select_next_item(),
            ['<C-d>'] = cmp.mapping.scroll_docs(-4),
            ['<C-u>'] = cmp.mapping.scroll_docs(4),
            ['<C-e>'] = cmp.mapping.close(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
          },
          sources = {
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'path' },
          },
        })
      end
    },

    -- LSP Kind (icons for autocompletion)
    { 'onsails/lspkind-nvim', event = 'InsertEnter' },

    -- LSP Configuration
    { 
      'neovim/nvim-lspconfig', 
      event = { 'BufReadPre', 'BufNewFile' },
      config = function()
        require'lspconfig'.pyright.setup{}  -- Example LSP server for Python
        require'lspconfig'.ts_ls.setup{} -- Example LSP server for TypeScript/JavaScript
      end
    },

    -- Auto-pairs for automatic closing brackets/quotes
    { 
      'windwp/nvim-autopairs', 
      event = 'InsertEnter',
      config = function()
        require('nvim-autopairs').setup({
          check_ts = true,
          disable_filetype = { "TelescopePrompt", "vim" },
          fast_wrap = {
            map = '<M-e>',
            chars = { '{', '[', '(', '"', "'" },
            pattern = string.gsub([[ [%'\"%>%]%)%}]], '%s+', ''),
            end_key = '$',
            keys = 'qwertyuiopzxcvbnmasdfghjkl',
            check_comma = true,
          },
        })
      end
    },
  },

  -- Colorscheme and plugin install options
  install = {
    colorscheme = { "habamax" },
  },

  checker = {
    enabled = true,
  },
})

-- Configure Neovim settings
vim.o.cursorline = true
vim.o.number = true
vim.o.swapfile = false
vim.o.showmode = false
vim.o.ruler = false
vim.o.laststatus = 0
vim.o.statusline = "%f %y %l/%L %c %p%%"
