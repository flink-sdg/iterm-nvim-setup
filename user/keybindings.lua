local map = vim.api.nvim_set_keymap

map('n', '<M-Right>', '$', {noremap = true})
map('n', '<M-Left>', '0', {noremap = true})
map('n', '<C-Up>', ':wincmd k<CR>', {noremap = true})
map('n', '<C-Right>', ':wincmd l<CR>', {noremap = true})
map('n', '<C-Down>', ':wincmd j<CR>', {noremap = true})
map('n', '<C-Left>', ':wincmd h<CR>', {noremap = true})
map('n', '<C-n>', ':vs | Exp<CR>', {noremap = true})
map('n', '<C-n>', ':vs | Exp<CR>', {noremap = true})
map('n', '<CR>', ':nohlsearch<CR>', {noremap = true})

map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', {noremap = true})
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', {noremap = true})
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', {noremap = true})
map('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>', {noremap = true})
map('n', 'gw', ':lua vim.lsp.buf.workspace_symbol()<CR>', {noremap = true})
map('n', 'gr', ':lua vim.lsp.buf.references()<CR>', {noremap = true})
map('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>', {noremap = true})
map('n', 'K', ':lua vim.lsp.buf.hover()<CR>', {noremap = true})
map('n', '<C-k>', ':lua vim.lsp.buf.signature_help()<CR>', {noremap = true})
map('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>', {noremap = true})
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', {noremap = true})
map('n', '<leader>f', ':lua vim.lsp.buf.formatting()<CR>', {noremap = true})

vim.api.nvim_command([[
	tnoremap <Esc> <C-\><C-n>
]])
