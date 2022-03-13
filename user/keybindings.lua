local map = vim.api.nvim_set_keymap

map('n', '<M-Up>', ':wincmd k<CR>', {noremap = true})
map('n', '<M-Right>', ':wincmd l<CR>', {noremap = true})
map('n', '<M-Down>', ':wincmd j<CR>', {noremap = true})
map('n', '<M-Left>', ':wincmd h<CR>', {noremap = true})
map('n', '<C-n>', ':Vex<CR>', {noremap = true})

map('n', 'gd', ':lua vim.lsp.buf.definition()<cr>', {noremap = true})
map('n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', {noremap = true})
map('n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', {noremap = true})
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<cr>', {noremap = true})
map('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', {noremap = true})
map('n', 'gr', ':lua vim.lsp.buf.references()<cr>', {noremap = true})
map('n', 'gt', ':lua vim.lsp.buf.type_definition()<cr>', {noremap = true})
map('n', 'K', ':lua vim.lsp.buf.hover()<cr>', {noremap = true})
map('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<cr>', {noremap = true})
map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<cr>', {noremap = true})
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<cr>', {noremap = true})

vim.api.nvim_command([[
	tnoremap <Esc> <C-\><C-n>
]])
