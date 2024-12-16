require 'config.remap'
require 'config.lazy'
require 'config.options'

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'help', 'man' },
  command = 'wincmd L',
})

require 'config.TextYankHighlight'

require('lazy').setup({
  {
    'ThePrimeagen/harpoon',
    config = require 'config.harpoon-remap',
  },

  'tpope/vim-sleuth',
  require 'config.gitsigns',
  require 'config.whitch-key',
  require 'config.telescope',
  require 'config.lazydev',
  { 'Bilal2453/luvit-meta', lazy = true },
  require 'config.lspconfig',
  require 'config.autoformat',
  require 'config.autocomplete',
  require 'config.colorscheme',
  require 'config.todohighlight',
  require 'config.small-plugins',
  require 'config.treesitter',
  require 'config.lsp-signature',
  require 'config.comment',
  require 'config.refactoring',
  -- require 'config.neo-tree',
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    This is the easiest way to modularize your config.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  -- { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
