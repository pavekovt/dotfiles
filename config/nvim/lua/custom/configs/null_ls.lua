local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = {
    null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.goimports_reviser.with { extra_args = { "-rm-unused" } },
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = true }
        end,
      })
    end
  end,
}
