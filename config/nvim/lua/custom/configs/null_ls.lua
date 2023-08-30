local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.goimports_reviser.with({ extra_args = { "-rm-unused" } }),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
  },
}
