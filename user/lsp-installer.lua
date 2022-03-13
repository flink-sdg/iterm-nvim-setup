local lsp_installer = require('nvim-lsp-installer')
local root_pattern = require('lspconfig.util').root_pattern


lsp_installer.on_server_ready(function(server)
	local opts = {}

	if server.name == 'sumneko_lua' then
		opts = {
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim', 'use', 'root_pattern'}
					}
				}
			}
		}
	elseif server.name == 'tsserver' then
		opts = {
			filetypes = {'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx'},
			root_dir = root_pattern('package.json', 'tsconfig.json', 'jsconfig.json', '.git')
		}
	elseif server.name == 'gopls' then
		opts = {
			filetypes = {'go', 'gomod'},
			root_dir = root_pattern('go.work', 'go.mod', '.git'),
			settings = {
				gopls = {
					analyses = {
						unusedparams = true
					},
					staticcheck = true
				}
			}
		}
	end

    server:setup(opts)
end)
