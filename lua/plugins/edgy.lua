return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = function()
    local opts = {
      bottom = {
        {
          ft = "toggleterm",
          size = { height = 0.4 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        {
          ft = "noice",
          size = { height = 0.4 },
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        {
          ft = "lazyterm",
          title = "LazyTerm",
          size = { height = 0.4 },
          filter = function(buf)
            return not vim.b[buf].lazyterm_cmd
          end,
        },
        "Trouble",
        {
          ft = "trouble",
          filter = function(buf, win)
            return vim.api.nvim_win_get_config(win).relative == ""
          end,
        },
        -- { ft = "qf", title = "QuickFix" },
        -- {
        --   ft = "help",
        --   size = { height = 20 },
        --   -- don't open help files in edgy that we're editing
        --   filter = function(buf)
        --     return vim.bo[buf].buftype == "help"
        --   end,
        -- },
        -- { title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
      },
      keys = {},
    }
    return opts
  end,
}
