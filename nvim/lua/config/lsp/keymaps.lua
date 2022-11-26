local function set_keymaps(bufnr)
  local opts = { noremap = true, silent = true }
  local set_keymap = vim.api.nvim_buf_set_keymap
  set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  set_keymap(bufnr, 'n', 'gd', '<cmd>lua require("telescope.builtin").lsp_definitions()<CR>', opts)
  set_keymap(bufnr, 'n', 'gi', '<cmd>lua require("telescope.builtin").lsp_implementations()<CR>', opts)
  set_keymap(bufnr, 'n', 'gt', '<cmd>lua require("telescope.builtin").lsp_type_definitions()<CR>', opts)

  set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)

  set_keymap(bufnr, 'n', '<leader>laf', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>ldf', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>lgf', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- set_keymap(bufnr, 'n', '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>la', '<cmd>CodeActionMenu<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>ls', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
  set_keymap(bufnr, 'n', '<leader>lf', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
  set_keymap(bufnr, 'v', '<leader>lf', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
  set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

  set_keymap(bufnr, 'n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  set_keymap(bufnr, 'n', '<leader>dl', '<cmd>Telescope diagnostics<CR>', opts)

  set_keymap(bufnr, 'n', '<leader>R', [[:LspStop<CR>:LspStart<CR>]], opts)
end

return set_keymaps

