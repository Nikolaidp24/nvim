local Snacks = require("snacks.util")
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  -- init = function()
  --   vim.g.lualine_laststatus = vim.o.laststatus
  --   if vim.fn.argc(-1) > 0 then
  --     -- set an empty statusline till lualine loads
  --     vim.o.statusline = " "
  --   else
  --     -- hide the statusline on the starter page
  --     vim.o.laststatus = 0
  --   end
  -- end,
  opts = function()
    -- local lualine_require = require("lualine_require")
    -- lualine_require.require = require
    local icons = require("lazyvim.config").icons
    vim.o.laststatus = vim.g.lualine_laststatus
    local colors = {
      [""] = Snacks.color("Special"),
      ["Normal"] = Snacks.color("Special"),
      ["Warning"] = Snacks.color("DiagnosticError"),
      ["InProgress"] = Snacks.color("DiagnosticWarn"),
      blue = "#65D1FF",
      green = "#3EFFDC",
      violet = "#FF61EF",
      yellow = "#FFDA7B",
      red = "#FF4A4A",
      fg = "#FFFFFF",
      bg = nil,
      inactive_bg = "#2c3043",
      black = "#000000",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.black, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = nil },
      },
      insert = {
        a = { bg = colors.green, fg = colors.black, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = nil },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.black, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = nil },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = nil },
      },
      replace = {
        a = { bg = colors.red, fg = colors.black, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = nil },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
        b = { bg = colors.inactive_bg, fg = colors.semilightgray },
        c = { bg = colors.inactive_bg, fg = nil },
      },
    }
    -- configure lualine with modified theme
    -- local lualine_require = require("lualine_require")
    -- lualine_require.require = require

    -- vim.o.laststatus = vim.g.lualine_laststatus

    return {
      options = {
        theme = "auto",
        component_separators = { "", "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {},

        lualine_c = {
          -- Util.lualine.root_dir(),
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = { left = 1, right = 1 },
          },
          {
            "diff",
            colored = true,
            diff_color = {
              added = { fg = colors.green },
              modified = { fg = colors.blue },
              removed = { fg = colors.red },
            },
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = nil,
          },
          {
            function()
              return "%="
            end,
          },
          {
            function()
              local msg = "No Active LSP"
              local bufnumber = vim.api.nvim_get_current_buf()
              local clients = vim.lsp.get_clients({ bufnr = bufnumber })
              if next(clients) == nil then
                return msg
              else
                return clients[1].name
              end
            end,
            icon = " ",
            color = { fg = "#CDD6F4" },
          },
        },
        lualine_x = {
          "encoding",
          "branch",
          {
            "diagnostics",
            symbols = {
              erro = icons.diagnostics.error,
              warn = icons.diagnostics.warn,
              info = icons.diagnostics.info,
              hint = icons.diagnostics.hint,
            },
          },
        },
        lualine_y = {},
        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
        },
      },
      extensions = { "nvim-tree", "lazy", "mason", "trouble", "fzf", "toggleterm" },
    }
  end,
}
