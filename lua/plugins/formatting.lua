return {
  "stevearc/conform.nvim",
  lazy = true,
  opts = {
    notify_on_error = false,
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black", "isort" },
      markdown = { { "prettierd", "prettier" } },
      typescript = { { "prettierd", "prettier" } },
      javascript = { { "prettierd", "prettier" } },
      sh = { "shfmt" },
    },
  },
}
