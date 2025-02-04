return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "b0o/nvim-tree-preview.lua",
  },
  opts = {
    renderer = {
      highlight_opened_files = "all",
    },
    filters = {
      custom = {
        ".gitignore",
        ".DS_Store",
      },
    },
    disable_netrw = true,
    hijack_netrw = true,
    update_focused_file = {
      enable = true,
      update_root = true,
    },
    git = {
      timeout = 2000,
    },
    view = {
      float = {
        enable = true,
      },
    },
    on_attach = function(bufnr)
      local api = require("nvim-tree.api")

      -- Important: When you supply an `on_attach` function, nvim-tree won't
      -- automatically set up the default keymaps. To set up the default keymaps,
      -- call the `default_on_attach` function. See `:help nvim-tree-quickstart-custom-mappings`.
      api.config.mappings.default_on_attach(bufnr)

      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      local preview = require("nvim-tree-preview")

      vim.keymap.set("n", "<Tab>", preview.watch, opts("Preview (Watch)"))
      vim.keymap.set("n", "<Esc>", preview.unwatch, opts("Close Preview/Unwatch"))
      vim.keymap.set("n", "<C-f>", function()
        return preview.scroll(4)
      end, opts("Scroll Down"))
      vim.keymap.set("n", "<C-b>", function()
        return preview.scroll(-4)
      end, opts("Scroll Up"))
    end,
  },
}
