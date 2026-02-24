local M = {}

M.colors = {
  bg = "#0a0a0a",
  bg_float = "#111111",
  bg_popup = "#141414",
  bg_visual = "#2a2a2a",
  bg_cursor_line = "#161616",
  bg_statusline = "#111111",
  bg_search = "#3a3a3a",

  fg = "#c8c8c8",
  fg_bright = "#e8e8e8",
  fg_dim = "#888888",
  fg_muted = "#555555",
  fg_faint = "#363636",
  fg_white = "#ffffff",

  border = "#333333",
  error = "#b0b0b0",
  warn = "#999999",
  info = "#777777",
  hint = "#666666",

  diff_add = "#1a2a1a",
  diff_change = "#1a1a2a",
  diff_delete = "#2a1a1a",
}

function M.setup()
  -- Reset everything
  vim.cmd("highlight clear")

  local c = M.colors

  local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  ---------------------------------------------------------------------------
  -- Editor UI
  ---------------------------------------------------------------------------
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalNC", { fg = c.fg_dim, bg = c.bg })
  hl("NormalFloat", { fg = c.fg, bg = c.bg_float })
  hl("FloatBorder", { fg = c.border, bg = c.bg_float })
  hl("FloatTitle", { fg = c.fg_bright, bg = c.bg_float, bold = true })
  hl("Cursor", { fg = c.bg, bg = c.fg_bright })
  hl("CursorLine", { bg = c.bg_cursor_line })
  hl("CursorColumn", { bg = c.bg_cursor_line })
  hl("ColorColumn", { bg = c.bg_cursor_line })
  hl("LineNr", { fg = c.fg_faint })
  hl("CursorLineNr", { fg = c.fg_bright, bold = true })
  hl("SignColumn", { fg = c.fg_muted, bg = c.bg })
  hl("FoldColumn", { fg = c.fg_faint, bg = c.bg })
  hl("Folded", { fg = c.fg_dim, bg = c.bg_cursor_line })
  hl("VertSplit", { fg = c.fg_faint })
  hl("WinSeparator", { fg = c.fg_faint })
  hl("StatusLine", { fg = c.fg, bg = c.bg_statusline })
  hl("StatusLineNC", { fg = c.fg_muted, bg = c.bg_statusline })
  hl("TabLine", { fg = c.fg_dim, bg = c.bg_statusline })
  hl("TabLineSel", { fg = c.fg_bright, bg = c.bg, bold = true })
  hl("TabLineFill", { bg = c.bg_statusline })
  hl("WinBar", { fg = c.fg_dim, bg = c.bg })
  hl("WinBarNC", { fg = c.fg_muted, bg = c.bg })
  hl("Title", { fg = c.fg_bright, bold = true })
  hl("Visual", { bg = c.bg_visual })
  hl("VisualNOS", { bg = c.bg_visual })
  hl("Search", { fg = c.fg_white, bg = c.bg_search })
  hl("IncSearch", { fg = c.bg, bg = c.fg_bright })
  hl("CurSearch", { fg = c.bg, bg = c.fg_bright })
  hl("Substitute", { fg = c.bg, bg = c.fg_dim })
  hl("MatchParen", { fg = c.fg_white, bold = true, underline = true })
  hl("Pmenu", { fg = c.fg, bg = c.bg_popup })
  hl("PmenuSel", { fg = c.fg_bright, bg = c.bg_visual })
  hl("PmenuSbar", { bg = c.bg_popup })
  hl("PmenuThumb", { bg = c.fg_muted })
  hl("Directory", { fg = c.fg_bright })
  hl("Question", { fg = c.fg_bright })
  hl("MoreMsg", { fg = c.fg_dim })
  hl("ModeMsg", { fg = c.fg_dim })
  hl("ErrorMsg", { fg = c.error, bold = true })
  hl("WarningMsg", { fg = c.warn })
  hl("NonText", { fg = c.fg_faint })
  hl("SpecialKey", { fg = c.fg_faint })
  hl("Conceal", { fg = c.fg_muted })
  hl("EndOfBuffer", { fg = c.fg_faint })
  hl("Whitespace", { fg = c.fg_faint })
  hl("WildMenu", { fg = c.fg_bright, bg = c.bg_visual })

  ---------------------------------------------------------------------------
  -- Syntax (base Vim groups)
  ---------------------------------------------------------------------------
  hl("Comment", { fg = c.fg_muted, italic = true })
  hl("Constant", { fg = c.fg_bright })
  hl("String", { fg = c.fg_dim })
  hl("Character", { fg = c.fg_dim })
  hl("Number", { fg = c.fg_bright })
  hl("Boolean", { fg = c.fg_bright })
  hl("Float", { fg = c.fg_bright })
  hl("Identifier", { fg = c.fg })
  hl("Function", { fg = c.fg_bright, bold = true })
  hl("Statement", { fg = c.fg })
  hl("Conditional", { fg = c.fg, bold = true })
  hl("Repeat", { fg = c.fg, bold = true })
  hl("Label", { fg = c.fg })
  hl("Operator", { fg = c.fg_dim })
  hl("Keyword", { fg = c.fg, italic = true })
  hl("Exception", { fg = c.fg, bold = true })
  hl("PreProc", { fg = c.fg_dim })
  hl("Include", { fg = c.fg_dim })
  hl("Define", { fg = c.fg_dim })
  hl("Macro", { fg = c.fg })
  hl("PreCondit", { fg = c.fg_dim })
  hl("Type", { fg = c.fg })
  hl("StorageClass", { fg = c.fg, italic = true })
  hl("Structure", { fg = c.fg })
  hl("Typedef", { fg = c.fg })
  hl("Special", { fg = c.fg })
  hl("SpecialChar", { fg = c.fg_dim })
  hl("Tag", { fg = c.fg })
  hl("Delimiter", { fg = c.fg_muted })
  hl("SpecialComment", { fg = c.fg_dim, italic = true })
  hl("Debug", { fg = c.fg_dim })
  hl("Underlined", { fg = c.fg, underline = true })
  hl("Ignore", { fg = c.fg_faint })
  hl("Error", { fg = c.error, bold = true })
  hl("Todo", { fg = c.fg_bright, bg = c.bg_visual, bold = true })

  ---------------------------------------------------------------------------
  -- Treesitter
  ---------------------------------------------------------------------------
  hl("@variable", { fg = c.fg })
  hl("@variable.builtin", { fg = c.fg_dim, italic = true })
  hl("@variable.parameter", { fg = c.fg })
  hl("@variable.member", { fg = c.fg })
  hl("@constant", { fg = c.fg_bright })
  hl("@constant.builtin", { fg = c.fg_bright })
  hl("@constant.macro", { fg = c.fg_bright })
  hl("@module", { fg = c.fg })
  hl("@string", { fg = c.fg_dim })
  hl("@string.escape", { fg = c.fg })
  hl("@string.regex", { fg = c.fg_dim })
  hl("@string.special", { fg = c.fg_dim })
  hl("@character", { fg = c.fg_dim })
  hl("@number", { fg = c.fg_bright })
  hl("@boolean", { fg = c.fg_bright })
  hl("@float", { fg = c.fg_bright })
  hl("@function", { fg = c.fg_bright, bold = true })
  hl("@function.builtin", { fg = c.fg_bright })
  hl("@function.call", { fg = c.fg_bright })
  hl("@function.macro", { fg = c.fg_bright })
  hl("@method", { fg = c.fg_bright })
  hl("@method.call", { fg = c.fg_bright })
  hl("@constructor", { fg = c.fg })
  hl("@keyword", { fg = c.fg, italic = true })
  hl("@keyword.function", { fg = c.fg, italic = true })
  hl("@keyword.operator", { fg = c.fg_dim })
  hl("@keyword.return", { fg = c.fg, italic = true })
  hl("@keyword.import", { fg = c.fg_dim })
  hl("@conditional", { fg = c.fg, bold = true })
  hl("@repeat", { fg = c.fg, bold = true })
  hl("@label", { fg = c.fg })
  hl("@operator", { fg = c.fg_dim })
  hl("@exception", { fg = c.fg, bold = true })
  hl("@type", { fg = c.fg })
  hl("@type.builtin", { fg = c.fg, italic = true })
  hl("@type.qualifier", { fg = c.fg, italic = true })
  hl("@type.definition", { fg = c.fg })
  hl("@include", { fg = c.fg_dim })
  hl("@comment", { fg = c.fg_muted, italic = true })
  hl("@punctuation.bracket", { fg = c.fg_muted })
  hl("@punctuation.delimiter", { fg = c.fg_muted })
  hl("@punctuation.special", { fg = c.fg_dim })
  hl("@tag", { fg = c.fg })
  hl("@tag.attribute", { fg = c.fg_dim })
  hl("@tag.delimiter", { fg = c.fg_muted })
  hl("@attribute", { fg = c.fg_dim })
  hl("@property", { fg = c.fg })
  hl("@field", { fg = c.fg })
  hl("@parameter", { fg = c.fg })
  hl("@text", { fg = c.fg })
  hl("@text.strong", { fg = c.fg_bright, bold = true })
  hl("@text.emphasis", { fg = c.fg, italic = true })
  hl("@text.underline", { fg = c.fg, underline = true })
  hl("@text.title", { fg = c.fg_bright, bold = true })
  hl("@text.uri", { fg = c.fg_dim, underline = true })
  hl("@text.todo", { fg = c.fg_bright, bg = c.bg_visual, bold = true })
  hl("@text.note", { fg = c.fg_dim, italic = true })
  hl("@markup.heading", { fg = c.fg_bright, bold = true })
  hl("@markup.link", { fg = c.fg_dim, underline = true })
  hl("@markup.link.url", { fg = c.fg_dim, underline = true })
  hl("@markup.raw", { fg = c.fg_dim })
  hl("@markup.list", { fg = c.fg_dim })

  ---------------------------------------------------------------------------
  -- LSP Semantic Tokens
  ---------------------------------------------------------------------------
  hl("@lsp.type.class", { fg = c.fg })
  hl("@lsp.type.decorator", { fg = c.fg_dim })
  hl("@lsp.type.enum", { fg = c.fg })
  hl("@lsp.type.enumMember", { fg = c.fg_bright })
  hl("@lsp.type.function", { fg = c.fg_bright, bold = true })
  hl("@lsp.type.interface", { fg = c.fg })
  hl("@lsp.type.keyword", { fg = c.fg, italic = true })
  hl("@lsp.type.macro", { fg = c.fg })
  hl("@lsp.type.method", { fg = c.fg_bright })
  hl("@lsp.type.namespace", { fg = c.fg })
  hl("@lsp.type.parameter", { fg = c.fg })
  hl("@lsp.type.property", { fg = c.fg })
  hl("@lsp.type.struct", { fg = c.fg })
  hl("@lsp.type.type", { fg = c.fg })
  hl("@lsp.type.typeParameter", { fg = c.fg })
  hl("@lsp.type.variable", { fg = c.fg })

  ---------------------------------------------------------------------------
  -- Diagnostics
  ---------------------------------------------------------------------------
  hl("DiagnosticError", { fg = c.error })
  hl("DiagnosticWarn", { fg = c.warn })
  hl("DiagnosticInfo", { fg = c.info })
  hl("DiagnosticHint", { fg = c.hint })
  hl("DiagnosticUnderlineError", { sp = c.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = c.warn, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = c.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = c.hint, undercurl = true })
  hl("DiagnosticVirtualTextError", { fg = c.error, bg = c.bg_cursor_line })
  hl("DiagnosticVirtualTextWarn", { fg = c.warn, bg = c.bg_cursor_line })
  hl("DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg_cursor_line })
  hl("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_cursor_line })
  hl("DiagnosticSignError", { fg = c.error })
  hl("DiagnosticSignWarn", { fg = c.warn })
  hl("DiagnosticSignInfo", { fg = c.info })
  hl("DiagnosticSignHint", { fg = c.hint })

  ---------------------------------------------------------------------------
  -- Git / Diff
  ---------------------------------------------------------------------------
  hl("DiffAdd", { bg = c.diff_add })
  hl("DiffChange", { bg = c.diff_change })
  hl("DiffDelete", { bg = c.diff_delete })
  hl("DiffText", { bg = c.bg_visual })
  hl("diffAdded", { fg = c.fg_bright })
  hl("diffRemoved", { fg = c.fg_dim })
  hl("diffChanged", { fg = c.fg })
  hl("GitSignsAdd", { fg = c.fg_dim })
  hl("GitSignsChange", { fg = c.fg_muted })
  hl("GitSignsDelete", { fg = c.fg_dim })

  ---------------------------------------------------------------------------
  -- Telescope
  ---------------------------------------------------------------------------
  hl("TelescopeNormal", { fg = c.fg, bg = c.bg_float })
  hl("TelescopeBorder", { fg = c.border, bg = c.bg_float })
  hl("TelescopeTitle", { fg = c.fg_bright, bold = true })
  hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_popup })
  hl("TelescopePromptBorder", { fg = c.border, bg = c.bg_popup })
  hl("TelescopePromptTitle", { fg = c.fg_bright, bold = true })
  hl("TelescopePromptPrefix", { fg = c.fg_dim })
  hl("TelescopePromptCounter", { fg = c.fg_muted })
  hl("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_float })
  hl("TelescopeResultsBorder", { fg = c.border, bg = c.bg_float })
  hl("TelescopeResultsTitle", { fg = c.fg_bright, bold = true })
  hl("TelescopePreviewNormal", { fg = c.fg, bg = c.bg_float })
  hl("TelescopePreviewBorder", { fg = c.border, bg = c.bg_float })
  hl("TelescopePreviewTitle", { fg = c.fg_bright, bold = true })
  hl("TelescopeSelection", { fg = c.fg_bright, bg = c.bg_visual })
  hl("TelescopeSelectionCaret", { fg = c.fg_bright })
  hl("TelescopeMatching", { fg = c.fg_white, bold = true })

  ---------------------------------------------------------------------------
  -- Neo-tree
  ---------------------------------------------------------------------------
  hl("NeoTreeNormal", { fg = c.fg, bg = c.bg })
  hl("NeoTreeNormalNC", { fg = c.fg_dim, bg = c.bg })
  hl("NeoTreeDirectoryName", { fg = c.fg_bright })
  hl("NeoTreeDirectoryIcon", { fg = c.fg_dim })
  hl("NeoTreeFileName", { fg = c.fg })
  hl("NeoTreeFileIcon", { fg = c.fg_dim })
  hl("NeoTreeRootName", { fg = c.fg_bright, bold = true })
  hl("NeoTreeGitAdded", { fg = c.fg_dim })
  hl("NeoTreeGitModified", { fg = c.fg_dim })
  hl("NeoTreeGitDeleted", { fg = c.fg_muted })
  hl("NeoTreeGitUntracked", { fg = c.fg_muted })
  hl("NeoTreeIndentMarker", { fg = c.fg_faint })
  hl("NeoTreeCursorLine", { bg = c.bg_cursor_line })
  hl("NeoTreeTitleBar", { fg = c.fg_bright, bg = c.bg_statusline, bold = true })
  hl("NeoTreeFloatBorder", { fg = c.border, bg = c.bg_float })
  hl("NeoTreeFloatTitle", { fg = c.fg_bright, bold = true })

  ---------------------------------------------------------------------------
  -- Indent guides (indent-blankline)
  ---------------------------------------------------------------------------
  hl("IblIndent", { fg = c.fg_faint })
  hl("IblScope", { fg = c.fg_muted })
  hl("IndentBlanklineChar", { fg = c.fg_faint })
  hl("IndentBlanklineContextChar", { fg = c.fg_muted })

  ---------------------------------------------------------------------------
  -- Noice / Notify
  ---------------------------------------------------------------------------
  hl("NoiceCmdline", { fg = c.fg, bg = c.bg_float })
  hl("NoiceCmdlinePopup", { fg = c.fg, bg = c.bg_float })
  hl("NoiceCmdlinePopupBorder", { fg = c.border, bg = c.bg_float })
  hl("NoiceCmdlineIcon", { fg = c.fg_dim })
  hl("NoicePopupmenu", { fg = c.fg, bg = c.bg_popup })
  hl("NoicePopupmenuBorder", { fg = c.border, bg = c.bg_popup })
  hl("NotifyERRORBorder", { fg = c.border })
  hl("NotifyWARNBorder", { fg = c.border })
  hl("NotifyINFOBorder", { fg = c.border })
  hl("NotifyDEBUGBorder", { fg = c.border })
  hl("NotifyTRACEBorder", { fg = c.border })
  hl("NotifyERRORTitle", { fg = c.error })
  hl("NotifyWARNTitle", { fg = c.warn })
  hl("NotifyINFOTitle", { fg = c.info })
  hl("NotifyDEBUGTitle", { fg = c.hint })
  hl("NotifyTRACETitle", { fg = c.hint })
  hl("NotifyERRORBody", { fg = c.fg })
  hl("NotifyWARNBody", { fg = c.fg })
  hl("NotifyINFOBody", { fg = c.fg })
  hl("NotifyDEBUGBody", { fg = c.fg })
  hl("NotifyTRACEBody", { fg = c.fg })
  hl("NotifyERRORIcon", { fg = c.error })
  hl("NotifyWARNIcon", { fg = c.warn })
  hl("NotifyINFOIcon", { fg = c.info })
  hl("NotifyDEBUGIcon", { fg = c.hint })
  hl("NotifyTRACEIcon", { fg = c.hint })

  ---------------------------------------------------------------------------
  -- Which-key
  ---------------------------------------------------------------------------
  hl("WhichKey", { fg = c.fg_bright })
  hl("WhichKeyGroup", { fg = c.fg_dim })
  hl("WhichKeySeparator", { fg = c.fg_faint })
  hl("WhichKeyDesc", { fg = c.fg })
  hl("WhichKeyFloat", { bg = c.bg_float })
  hl("WhichKeyBorder", { fg = c.border, bg = c.bg_float })
  hl("WhichKeyValue", { fg = c.fg_dim })

  ---------------------------------------------------------------------------
  -- Lazy.nvim
  ---------------------------------------------------------------------------
  hl("LazyNormal", { fg = c.fg, bg = c.bg_float })
  hl("LazyButton", { fg = c.fg, bg = c.bg_visual })
  hl("LazyButtonActive", { fg = c.fg_bright, bg = c.bg_search, bold = true })
  hl("LazyH1", { fg = c.fg_bright, bold = true })
  hl("LazyH2", { fg = c.fg_bright, bold = true })
  hl("LazySpecial", { fg = c.fg_dim })
  hl("LazyComment", { fg = c.fg_muted, italic = true })

  ---------------------------------------------------------------------------
  -- Mason
  ---------------------------------------------------------------------------
  hl("MasonNormal", { fg = c.fg, bg = c.bg_float })
  hl("MasonHeader", { fg = c.fg_bright, bg = c.bg_visual, bold = true })
  hl("MasonHighlight", { fg = c.fg_bright })
  hl("MasonHighlightBlock", { fg = c.bg, bg = c.fg_dim })
  hl("MasonHighlightBlockBold", { fg = c.bg, bg = c.fg_bright, bold = true })
  hl("MasonMuted", { fg = c.fg_muted })
  hl("MasonMutedBlock", { fg = c.fg, bg = c.bg_visual })

  ---------------------------------------------------------------------------
  -- CMP (completion)
  ---------------------------------------------------------------------------
  hl("CmpItemAbbr", { fg = c.fg })
  hl("CmpItemAbbrDeprecated", { fg = c.fg_muted, strikethrough = true })
  hl("CmpItemAbbrMatch", { fg = c.fg_bright, bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = c.fg_bright, bold = true })
  hl("CmpItemMenu", { fg = c.fg_muted })
  hl("CmpItemKindDefault", { fg = c.fg_dim })
  hl("CmpItemKindFunction", { fg = c.fg_dim })
  hl("CmpItemKindMethod", { fg = c.fg_dim })
  hl("CmpItemKindVariable", { fg = c.fg_dim })
  hl("CmpItemKindClass", { fg = c.fg_dim })
  hl("CmpItemKindInterface", { fg = c.fg_dim })
  hl("CmpItemKindModule", { fg = c.fg_dim })
  hl("CmpItemKindProperty", { fg = c.fg_dim })
  hl("CmpItemKindKeyword", { fg = c.fg_dim })
  hl("CmpItemKindText", { fg = c.fg_dim })
  hl("CmpItemKindSnippet", { fg = c.fg_dim })
  hl("CmpItemKindField", { fg = c.fg_dim })
  hl("CmpItemKindValue", { fg = c.fg_dim })
  hl("CmpItemKindEnum", { fg = c.fg_dim })
  hl("CmpItemKindConstant", { fg = c.fg_dim })
  hl("CmpItemKindStruct", { fg = c.fg_dim })

  ---------------------------------------------------------------------------
  -- Dashboard (if using alpha / dashboard-nvim)
  ---------------------------------------------------------------------------
  hl("DashboardHeader", { fg = c.fg_dim })
  hl("DashboardCenter", { fg = c.fg })
  hl("DashboardFooter", { fg = c.fg_muted, italic = true })
  hl("DashboardShortCut", { fg = c.fg_dim })
  hl("DashboardKey", { fg = c.fg_bright })
  hl("DashboardDesc", { fg = c.fg })
  hl("DashboardIcon", { fg = c.fg_dim })

  ---------------------------------------------------------------------------
  -- Mini (mini.statusline, mini.tabline, etc.)
  ---------------------------------------------------------------------------
  hl("MiniStatuslineFilename", { fg = c.fg_dim, bg = c.bg_statusline })
  hl("MiniStatuslineDevinfo", { fg = c.fg_dim, bg = c.bg_statusline })
  hl("MiniStatuslineModeNormal", { fg = c.bg, bg = c.fg_dim, bold = true })
  hl("MiniStatuslineModeInsert", { fg = c.bg, bg = c.fg, bold = true })
  hl("MiniStatuslineModeVisual", { fg = c.bg, bg = c.fg_dim, bold = true })
  hl("MiniStatuslineModeReplace", { fg = c.bg, bg = c.fg_muted, bold = true })
  hl("MiniStatuslineModeCommand", { fg = c.bg, bg = c.fg_dim, bold = true })

  ---------------------------------------------------------------------------
  -- Lualine (if used)
  ---------------------------------------------------------------------------
  hl("lualine_a_normal", { fg = c.bg, bg = c.fg_dim, bold = true })
  hl("lualine_b_normal", { fg = c.fg, bg = c.bg_visual })
  hl("lualine_c_normal", { fg = c.fg_dim, bg = c.bg_statusline })

  ---------------------------------------------------------------------------
  -- Misc
  ---------------------------------------------------------------------------
  hl("healthSuccess", { fg = c.fg_bright })
  hl("healthWarning", { fg = c.warn })
  hl("healthError", { fg = c.error })
  hl("SpellBad", { sp = c.fg_muted, undercurl = true })
  hl("SpellCap", { sp = c.fg_muted, undercurl = true })
  hl("SpellLocal", { sp = c.fg_muted, undercurl = true })
  hl("SpellRare", { sp = c.fg_muted, undercurl = true })
end

return M
