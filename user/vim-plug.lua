local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'			--language server protocol
Plug 'williamboman/nvim-lsp-installer'  --language server installer
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) --abstract syntax tree module, supports color highlights when programming
Plug 'windwp/nvim-autopairs'			--autocomplete pairs ['()'], etc...
Plug 'ellisonleao/glow.nvim'			--add md support :Glow
Plug 'nvim-lua/plenary.nvim'			--adds git diff support :DiffViewOpen
Plug 'sindrets/diffview.nvim'			--adds git diff support :DiffViewOpen
Plug 'mechatroner/rainbow_csv'			--csv colors

Plug 'luisiacc/gruvbox-baby'			--color scheme for nvim

-- below hrsh7th modules are used for intellisense / snippet auto complete

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug('evanleck/vim-svelte', {branch = 'main'})

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

vim.call('plug#end')
