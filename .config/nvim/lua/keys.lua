local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Windows
keymap('n', '=', ':vertical resize +5<CR>', opts)
keymap('n', '-', ':vertical resize -5<CR>', opts)
keymap('n', '+', ':resize +5<CR>', opts)
keymap('n', '_', ':resize -5<CR>', opts)
keymap('n', 'WH', ':leftabove vnew<CR>', opts)
keymap('n', 'WJ', ':rightbelow new<CR>', opts)
keymap('n', 'WL', ':rightbelow vnew<CR>', opts)
keymap('n', 'WK', ':leftabove new<CR>', opts)

-- Tabs
keymap('n', '<C-]>', ':tabnext<CR>', opts)
keymap('n', '<C-[>', ':tabprevious<CR>', opts)

-- LSP
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gv', ':vsplit<CR><cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gx', ':split<CR><cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gt', ':tabe<CR><cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- Autocomplete
vim.cmd([[
  inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
  inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
  inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
]])

-- NvimTree
keymap('n', '<C-n>', ':NvimTreeFindFileToggle!<CR>', opts)

-- FZF
keymap('n', '<Leader>f', ':Files<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>b', ':Buffer<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>r', ':RG<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>g', ':GF?<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>m', ':Marks<CR>', { noremap = true, silent = true })

-- GitGutter
keymap('n', '<C-u>', ':GitGutterUndoHunk<CR>', opts);
keymap('n', '<C-j>', ':GitGutterNextHunk<CR>', opts);
keymap('n', '<C-k>', ':GitGutterPrevHunk<CR>', opts);

-- Copilot
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false })
