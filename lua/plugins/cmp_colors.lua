local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  cmp.setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    performance = {
      max_view_entries = 10,
    },
  }),
}
