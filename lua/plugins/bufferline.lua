return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev buffer" },
  },
  opts = {
    options = {
      mode = "buffers",
      separator_style = { "", "" },
      show_buffer_close_icons = false,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          highlight = "Directory",
          separator = true,
        },
      },
    },
  },
  -- config = function(_, opts)
  --   require("bufferline").setup(opts)
  --   vim.api.nvim_create_autocmd("BufAdd", {
  --     callback = function()
  --       vim.schedule(function()
  --         pcall(nvim_bufferline)
  --       end)
  --     end,
  --   })
  -- end,
}
