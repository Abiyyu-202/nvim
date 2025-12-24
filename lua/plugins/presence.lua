return {
  "andweeb/presence.nvim",
  event = "VeryLazy", -- bisa juga "VimEnter" kalau mau langsung aktif
  opts = {
    -- Basic text
    auto_update = true,
    neovim_image_text = "ngodinf",
    main_image = "file",
    client_id = "793271441293967371", -- default Discord client ID presence.nvim
    log_level = nil,
    debounce_timeout = 10,
    enable_line_number = false,
    blacklist = {},

    -- Texts (kamu bisa ubah sesuka hati)
    editing_text = "im NOT coding on %s",
    file_explorer_text = "Browsing %s",
    git_commit_text = "Pura pura commit",
    plugin_manager_text = "Configuring plugins",
    reading_text = "Biasanya lagi liat output di %s",
    workspace_text = "Lagi buka %s",
    line_number_text = "Line %s of %s",
  },
}
