local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local extensions = {

  javascript = "js",
  javascriptreact = "jsx",
  typescript = "ts",
  typescriptreact = "tsx",
  markdown = "md",
  


}

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Rust
  b.formatting.rustfmt,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  b.formatting.ocamlformat,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
