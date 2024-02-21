local cmp = require("cmp")
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-cmdline",
    config = function()
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
  opts = {
    window = {
      completion = { border = "single" },
      documentation = { border = "single" },
    },
    performance = {
      max_view_entries = 10,
    },
  },
}
