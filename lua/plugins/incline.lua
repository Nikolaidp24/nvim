return
{
  "b0o/incline.nvim",
  event = "VeryLazy",
  config = function()
    require('incline').setup({
      ---@class InclineRenderProps
      ---@field buf number
      ---@field win number
      ---@field focused boolean

      ---@param props InclineRenderProps
      render = function(props)
        if not props.focused then return "" end

        local count = vim.fn.searchcount({ recompute = 1, maxcount = -1 })
        local contents = vim.fn.getreg("/")
        if string.len(contents) == 0 then return "" end

        return {
          {
            " ? ",
            group = "dkoStatusKey",
          },
          {
            (" %s "):format(contents),
            group = "IncSearch",
          },
          {
            (" %d/%d "):format(count.current, count.total),
            group = "dkoStatusValue",
          }
        }
      end,

      window = {
        margin = { horizontal = 0 },
        padding = 0,
      },
    })
  end,
}
