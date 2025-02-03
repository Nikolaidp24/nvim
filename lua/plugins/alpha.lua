return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    enabled = true,
    init = false,
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗
██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝
██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗
██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝
╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗
 ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝

                ███╗   ██╗██╗██╗  ██╗ ██████╗
                ████╗  ██║██║██║ ██╔╝██╔═══██╗
                ██╔██╗ ██║██║█████╔╝ ██║   ██║
                ██║╚██╗██║██║██╔═██╗ ██║   ██║
                ██║ ╚████║██║██║  ██╗╚██████╔╝
                ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝ ╚═════╝
      ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("r", " " .. " Recent files", "<cmd> FzfLua oldfiles <cr>"),
        dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
      }
    end,
  },
}
