require('plugins')
require('globals')
require('keymaps')
require('settings')
require('theme.tokyonight')

-- Plugins
require('config.compe')
require('config.colorizer')
require('config.nvim-tree')
require('config.nvim-treesitter')
require('config.nvim-quickscope')
require('config.nvim-gitsigns')
require('config.nvim-autopairs')
require('config.nvim-comment')
require('config.nvim-telescope')
require('config.nvim-floaterm')
require('config.nvim-matchup')
require('config.nvim-lspkind')
require('config.nvim-numb')
require('config.nvim-hop')
require('config.nvim-gitblame')
require('config.nvim-lightbulb')
require('config.nvim-neoscroll')
require('config.nvim-dashboard')
require('config.nvim-galaxyline')
require('config.nvim-barbar')
require('config.nvim-lsp-trouble')
require('config.nvim-reloader')
require('config.nvim-easyalign')
require('config.nvim-ctrlsf')
require('config.nvim-whichkey')
require('config.nvim-multi-cursor')
require('config.nvim-windowswap')
require('config.nvim-stripwhitespace')
-- require('config.vim-prettier')
-- require('config.nvim-indentline')
require('config.emmet-vim')
require('config.formatter')
require('config.sessions')

-- LSP
require('lsp')
require('lsp.bash')
require('lsp.php')
require('lsp.lua')
require('lsp.python')
require('lsp.vim')
require('lsp.json')
require('lsp.yaml')
require('lsp.html')
require('lsp.css')
require('lsp.vue')
require('lsp.tsserver')
