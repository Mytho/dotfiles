-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- GENERAL
vim.cmd.set 'number'
vim.cmd.set 'tabstop=2 shiftwidth=2 expandtab'
vim.cmd.set 'signcolumn=yes'
vim.cmd.set 'list'
vim.cmd.set 'cursorline'
vim.cmd.set 'nowrap'
vim.cmd.set 'autoread'
vim.cmd.set 'clipboard=unnamedplus'

vim.opt.listchars:append({
  eol = '↵',
  trail = '▒',
  space = '·',
})

-- SYNTAX HIGHLIGHTING
vim.opt.termguicolors = true
vim.cmd.backgound = 'dark'
vim.cmd.syntax 'enable'
vim.cmd.colorscheme 'duskfox'

-- Generic adjustments
-- vim.cmd.highlight 'Whitespace guifg=#333333'
-- vim.cmd.highlight 'NonText guifg=#333333'
-- vim.cmd.highlight 'Search guibg=#333333 guifg=none'
-- vim.cmd.highlight 'LineNR guifg=#666666'
-- vim.cmd.highlight 'CursorLine guibg=#333333'
-- vim.cmd.highlight 'StatusLine guibg=#333333'
-- vim.cmd.highlight 'StatusLineNC guibg=#333333'
-- vim.cmd.highlight 'WinSeparator guifg=#666666'

-- Transparant background
-- vim.cmd.highlight 'Normal guibg=none'
-- vim.cmd.highlight 'NonText guibg=none'
-- vim.cmd.highlight 'Normal ctermbg=none'
-- vim.cmd.highlight 'NonText ctermbg=none'
-- vim.cmd.highlight 'NormalNC guibg=none'
-- vim.cmd.highlight 'LineNr guibg=none'
-- vim.cmd.highlight 'SignColumn guibg=none'

-- TSServer
-- sudo npm install -g typescript typescript-language-server
require('lspconfig').ts_ls.setup {}

-- focus.vim
require("focus").setup({
  autoresize = {
    minwidth = 30,
    minheight = 30,
  },
  ui = {
    cursorline = false,
    signcolumn = false,
  },
})

-- FZF
vim.cmd.set 'rtp+=/usr/local/opt/fzf'
vim.g.fzf_layout = { window = { width = 0.9, height = 0.9 } }

-- Markdown
vim.cmd([[
  let g:markdown_fenced_languages = ['typescript', 'mermaid']
]])

-- Prettier
vim.cmd([[
  let g:prettier#config#trailing_comma = 'all'
  let g:prettier#exec_cmd_async = 1
  let g:prettier#autoformat = 1
  let g:prettier#autoformat_require_pragma = 0
]])
