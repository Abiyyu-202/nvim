return {
  -- Matikan semua tema yang bisa override
  { "tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },

  -- Override config LazyVim supaya gak set warna lain
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("themes.monochrome").setup()
      end,
    },
  },
}
