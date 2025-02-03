return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      list = {
        selection = {
          preselect = function(ctx)
            return ctx.mode ~= "cmdline" and not require("blink.cmp").snippet_active({ direction = 1 })
          end,
        },
      },
      menu = {
        border = "rounded",
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      },
      documentation = {
        window = {
          border = "rounded",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
    },
    sources = {
      cmdline = function()
        local type = vim.fn.getcmdtype()
        if type == "/" or type == "?" then
          return { "buffer" }
        end
        if type == ":" then
          return { "cmdline" }
        end
        return {}
      end,
    },
  },
}
