return {
  "wookayin/semshi",
  ft = "python",
  build = ":UpdateRemotePlugins",
  event = "LazyFile",
  init = function()
    vim.g["semshi#error_sign"] = false
    vim.g["semshi#simplify_markup"] = false
    vim.g["semshi#mark_selected_nodes"] = false
    vim.g["semshi#update_delay_factor"] = 0.001
  end,
}
