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
  require 'config.git-stuff',
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
  require 'config.tmux-navigator',
  require 'kickstart.plugins.neo-tree',
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
