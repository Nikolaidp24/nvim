return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      python = { "ruff" },
      sh = { "shellcheck" },
      markdown = { "markdownlint" },
      typescript = { "eslint_d" },
      javascript = { "eslint_d" },
    },
  },
}
