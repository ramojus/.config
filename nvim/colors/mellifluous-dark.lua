-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd('highlight clear') end
vim.g.colors_name = "mellifluous-dark"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@attribute", { fg = "#cdab89" })
hi(0, "@character.special", { link = "Character" })
hi(0, "@constant.builtin", { link = "Constant" })
hi(0, "@constant.macro", { link = "Constant" })
hi(0, "@constructor", { link = "Function" })
hi(0, "@danger", { fg = "#d78f88" })
hi(0, "@debug", { fg = "#cdab89" })
hi(0, "@define", { link = "PreProc" })
hi(0, "@environment", { fg = "#cdab89" })
hi(0, "@environment.name", { link = "@environment" })
hi(0, "@error", { link = "Error" })
hi(0, "@exception", { fg = "#cdab89" })
hi(0, "@field", { fg = "#d1d1d1" })
hi(0, "@function.builtin", { link = "Function" })
hi(0, "@function.macro", { link = "Function" })
hi(0, "@include", { fg = "#9e96b6" })
hi(0, "@keyword.function", { fg = "#d49191" })
hi(0, "@keyword.operator", { fg = "#cdab89" })
hi(0, "@keyword.return", { fg = "#d49191" })
hi(0, "@lsp.type.comment", {})
hi(0, "@lsp.type.enum", { link = "Type" })
hi(0, "@lsp.type.enumMember", { link = "Constant" })
hi(0, "@lsp.type.escapeSequence", { fg = "#8f8f8f" })
hi(0, "@lsp.type.formatSpecifier", { link = "Operator" })
hi(0, "@lsp.type.namespace", { link = "Type" })
hi(0, "@lsp.type.operator", { link = "Operator" })
hi(0, "@lsp.type.parameter", { fg = "#d1d1d1" })
hi(0, "@lsp.type.property", { fg = "#d1d1d1" })
hi(0, "@lsp.typemod.keyword.controlFlow", { fg = "#d49191" })
hi(0, "@lsp.typemod.variable.constant", { link = "Constant" })
hi(0, "@math", { fg = "#cdab89" })
hi(0, "@namespace", { fg = "#bcaa9a" })
hi(0, "@note", { fg = "#b6b696" })
hi(0, "@parameter", { fg = "#d1d1d1" })
hi(0, "@parameter.reference", { link = "@parameter" })
hi(0, "@property", { link = "@field" })
hi(0, "@punctuation.bracket", { fg = "#bcaa9a" })
hi(0, "@punctuation.delimiter", { fg = "#bcaa9a" })
hi(0, "@punctuation.special", { fg = "#bcaa9a" })
hi(0, "@storage.class", { link = "StorageClass" })
hi(0, "@string.escape", { fg = "#c4b392" })
hi(0, "@string.regex", { fg = "#c4b392" })
hi(0, "@string.special", { fg = "#c4b392" })
hi(0, "@symbol", { link = "Character" })
hi(0, "@tag", { link = "Keyword" })
hi(0, "@tag.attribute", { fg = "#9e96b6" })
hi(0, "@tag.delimiter", { fg = "#bcaa9a" })
hi(0, "@text.emphasis", { italic = true })
hi(0, "@text.literal", { link = "Character" })
hi(0, "@text.reference", { fg = "#b696b1" })
hi(0, "@text.strike", { strikethrough = true })
hi(0, "@text.strong", { bold = true })
hi(0, "@text.title", { fg = "#cdab89" })
hi(0, "@text.todo", { link = "Todo" })
hi(0, "@text.underline", { underline = true })
hi(0, "@text.uri", { fg = "#7d7595" })
hi(0, "@type.builtin", { link = "Type" })
hi(0, "@variable.builtin", { fg = "#cdab89" })
hi(0, "@warning", { fg = "#d7b788" })
hi(0, "Boolean", { fg = "#b696b1" })
hi(0, "Character", { fg = "#c4b392" })
hi(0, "CmpDocumentationBorder", { link = "VertSplit" })
hi(0, "CmpItemAbbr", { fg = "#8f8f8f" })
hi(0, "CmpItemAbbrDefault", { fg = "#8f8f8f" })
hi(0, "CmpItemAbbrDeprecated", { fg = "#727246" })
hi(0, "CmpItemAbbrDeprecatedDefault", { fg = "#727246" })
hi(0, "CmpItemAbbrMatch", { fg = "#8f8f8f" })
hi(0, "CmpItemAbbrMatchDefault", { fg = "#8f8f8f" })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = "#8f8f8f" })
hi(0, "CmpItemAbbrMatchFuzzyDefault", { fg = "#8f8f8f" })
hi(0, "CmpItemKind", { fg = "#cdab89" })
hi(0, "CmpItemKindClass", { fg = "#cdab89" })
hi(0, "CmpItemKindClassDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindColor", { fg = "#cdab89" })
hi(0, "CmpItemKindColorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstant", { fg = "#cdab89" })
hi(0, "CmpItemKindConstantDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstructor", { fg = "#cdab89" })
hi(0, "CmpItemKindConstructorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindDefault", { fg = "#cdab89" })
hi(0, "CmpItemKindEnum", { fg = "#cdab89" })
hi(0, "CmpItemKindEnumDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEnumMember", { fg = "#cdab89" })
hi(0, "CmpItemKindEnumMemberDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEvent", { fg = "#cdab89" })
hi(0, "CmpItemKindEventDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindField", { fg = "#cdab89" })
hi(0, "CmpItemKindFieldDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFile", { fg = "#cdab89" })
hi(0, "CmpItemKindFileDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFolder", { fg = "#cdab89" })
hi(0, "CmpItemKindFolderDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFunction", { fg = "#cdab89" })
hi(0, "CmpItemKindFunctionDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindInterface", { fg = "#cdab89" })
hi(0, "CmpItemKindInterfaceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindKeyword", { fg = "#cdab89" })
hi(0, "CmpItemKindKeywordDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindMethod", { fg = "#cdab89" })
hi(0, "CmpItemKindMethodDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindModule", { fg = "#cdab89" })
hi(0, "CmpItemKindModuleDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindOperator", { fg = "#cdab89" })
hi(0, "CmpItemKindOperatorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindProperty", { fg = "#cdab89" })
hi(0, "CmpItemKindPropertyDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindReference", { fg = "#cdab89" })
hi(0, "CmpItemKindReferenceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSnippet", { fg = "#cdab89" })
hi(0, "CmpItemKindSnippetDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindStruct", { fg = "#cdab89" })
hi(0, "CmpItemKindStructDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindText", { fg = "#cdab89" })
hi(0, "CmpItemKindTextDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindTypeParameter", { fg = "#cdab89" })
hi(0, "CmpItemKindTypeParameterDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindUnit", { fg = "#cdab89" })
hi(0, "CmpItemKindUnitDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindValue", { fg = "#cdab89" })
hi(0, "CmpItemKindValueDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindVariable", { fg = "#cdab89" })
hi(0, "CmpItemKindVariableDefault", { link = "CmpItemKind" })
hi(0, "CmpItemMenu", { fg = "#8f8f8f" })
hi(0, "CmpItemMenuDefault", { fg = "#8f8f8f" })
hi(0, "CmpScrollThumb", { link = "PmenuThumb" })
hi(0, "ColorColumn", { bg = "#171717" })
hi(0, "Comment", { fg = "#727246", italic = true })
hi(0, "Conceal", { fg = "#4d4d4d" })
hi(0, "Conditional", { fg = "#d49191" })
hi(0, "Constant", { fg = "#b696b1" })
hi(0, "Cursor", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "CursorColumn", { bg = "#212121" })
hi(0, "CursorIM", { link = "Cursor" })
hi(0, "CursorLine", { bg = "#212121" })
hi(0, "CursorLineNr", { bg = "#1c1c1c", fg = "#6e6e6e" })
hi(0, "Delimiter", { link = "Operator" })
hi(0, "DiagnosticError", { fg = "#d78f88" })
hi(0, "DiagnosticHint", { fg = "#b098c8" })
hi(0, "DiagnosticInfo", { fg = "#9e96b6" })
hi(0, "DiagnosticSignError", { bg = "#171717", fg = "#d78f88" })
hi(0, "DiagnosticSignHint", { bg = "#171717", fg = "#b098c8" })
hi(0, "DiagnosticSignInfo", { bg = "#171717", fg = "#9e96b6" })
hi(0, "DiagnosticSignWarn", { bg = "#171717", fg = "#d7b788" })
hi(0, "DiagnosticUnderlineError", { underline = true })
hi(0, "DiagnosticUnderlineHint", { underline = true })
hi(0, "DiagnosticUnderlineInfo", { underline = true })
hi(0, "DiagnosticUnderlineWarn", { underline = true })
hi(0, "DiagnosticVirtualTextError", { bg = "#262626", fg = "#d78f88" })
hi(0, "DiagnosticVirtualTextHint", { bg = "#262626", fg = "#b098c8" })
hi(0, "DiagnosticVirtualTextInfo", { bg = "#262626", fg = "#9e96b6" })
hi(0, "DiagnosticVirtualTextWarn", { bg = "#262626", fg = "#d7b788" })
hi(0, "DiagnosticWarn", { fg = "#d7b788" })
hi(0, "DiffAdd", { bg = "#353527" })
hi(0, "DiffChange", { bg = "#2f2a22" })
hi(0, "DiffDelete", { bg = "#3a2927" })
hi(0, "DiffText", { bg = "#483d2e" })
hi(0, "Directory", { fg = "#9e96b6" })
hi(0, "EndOfBuffer", { fg = "#1a1a1a" })
hi(0, "Error", { fg = "#d78f88" })
hi(0, "ErrorMsg", { fg = "#d78f88" })
hi(0, "Exception", { fg = "#cdab89" })
hi(0, "Float", { fg = "#b696b1" })
hi(0, "FloatBorder", { bg = "#262626", fg = "#262626" })
hi(0, "FloatShadow", { bg = "#171717" })
hi(0, "FloatTitle", { bg = "#262626", fg = "#727246" })
hi(0, "FoldColumn", { link = "Normal" })
hi(0, "Folded", { bg = "#262626", fg = "#8f8f8f" })
hi(0, "Function", { fg = "#9e96b6" })
hi(0, "GitSignsAdd", { bg = "#171717", fg = "#5a5a3f" })
hi(0, "GitSignsAddInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsAddLn", { bg = "#353527" })
hi(0, "GitSignsAddLnInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsAddNr", { bg = "#171717", fg = "#5a5a3f" })
hi(0, "GitSignsAddPreview", { bg = "#353527" })
hi(0, "GitSignsChange", { bg = "#171717", fg = "#996f33" })
hi(0, "GitSignsChangeInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsChangeLn", { bg = "#2f2a22" })
hi(0, "GitSignsChangeLnInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsChangeNr", { bg = "#171717", fg = "#996f33" })
hi(0, "GitSignsChangedelete", { bg = "#171717", fg = "#996f33" })
hi(0, "GitSignsChangedeleteLn", { bg = "#2f2a22" })
hi(0, "GitSignsChangedeleteNr", { bg = "#171717", fg = "#996f33" })
hi(0, "GitSignsCurrentLineBlame", { fg = "#4d4d4d" })
hi(0, "GitSignsDelete", { bg = "#171717", fg = "#993b33" })
hi(0, "GitSignsDeleteInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsDeleteLnInline", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsDeleteNr", { bg = "#171717", fg = "#993b33" })
hi(0, "GitSignsDeletePreview", { bg = "#3a2927" })
hi(0, "GitSignsDeleteVirtLn", { bg = "#3a2927" })
hi(0, "GitSignsDeleteVirtLnInLine", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "GitSignsStagedAdd", { bg = "#171717", fg = "#2d2d1f" })
hi(0, "GitSignsStagedAddLn", { bg = "#353527" })
hi(0, "GitSignsStagedAddNr", { bg = "#171717", fg = "#2d2d1f" })
hi(0, "GitSignsStagedChange", { bg = "#171717", fg = "#4c3719" })
hi(0, "GitSignsStagedChangeLn", { bg = "#2f2a22" })
hi(0, "GitSignsStagedChangeNr", { bg = "#171717", fg = "#4c3719" })
hi(0, "GitSignsStagedChangedelete", { bg = "#171717", fg = "#4c3719" })
hi(0, "GitSignsStagedChangedeleteLn", { bg = "#2f2a22" })
hi(0, "GitSignsStagedChangedeleteNr", { bg = "#171717", fg = "#4c3719" })
hi(0, "GitSignsStagedDelete", { bg = "#171717", fg = "#4c1d19" })
hi(0, "GitSignsStagedDeleteNr", { bg = "#171717", fg = "#4c1d19" })
hi(0, "GitSignsStagedTopdelete", { bg = "#171717", fg = "#4c1d19" })
hi(0, "GitSignsStagedTopdeleteNr", { bg = "#171717", fg = "#4c1d19" })
hi(0, "GitSignsTopdelete", { bg = "#171717", fg = "#993b33" })
hi(0, "GitSignsTopdeleteNr", { bg = "#171717", fg = "#993b33" })
hi(0, "GitSignsUntracked", { bg = "#171717", fg = "#5a5a3f" })
hi(0, "GitSignsUntrackedLn", { bg = "#353527" })
hi(0, "GitSignsUntrackedNr", { bg = "#171717", fg = "#5a5a3f" })
hi(0, "GitSignsVirtLnum", { bg = "#3a2927" })
hi(0, "Identifier", { fg = "#d1d1d1" })
hi(0, "Ignore", { fg = "#4d4d4d" })
hi(0, "IncSearch", { bg = "#cdab89", fg = "#1a1a1a" })
hi(0, "IndentBlanklineChar", { fg = "#2b2b2b" })
hi(0, "IndentBlanklineContextChar", { fg = "#4d4d4d" })
hi(0, "IndentBlanklineContextStart", { sp = "#d49191", underline = true })
hi(0, "IndentBlanklineSpaceChar", { link = "Whitespace" })
hi(0, "IndentBlanklineSpaceCharBlankline", { fg = "#4d4d4d", nocombine = true })
hi(0, "Keyword", { fg = "#cdab89" })
hi(0, "Label", { fg = "#d49191" })
hi(0, "LineNr", { bg = "#171717", fg = "#6e6e6e" })
hi(0, "LspCodeLens", { bg = "#212121" })
hi(0, "LspCodeLensSeparator", { fg = "#4d4d4d" })
hi(0, "LspInfoBorder", { fg = "#d49191" })
hi(0, "LspInfoFiletype", { fg = "#bcaa9a" })
hi(0, "LspInfoList", { fg = "#9e96b6" })
hi(0, "LspInfoTip", { fg = "#727246", italic = true })
hi(0, "LspInfoTitle", { fg = "#cdab89" })
hi(0, "LspReferenceRead", { link = "LspReferenceText" })
hi(0, "LspReferenceText", { bg = "#262626" })
hi(0, "LspReferenceWrite", { link = "LspReferenceText" })
hi(0, "LspSignatureActiveParameter", { bg = "#2b2b2b" })
hi(0, "MatchParen", { bg = "#2b2b2b", fg = "#d49191" })
hi(0, "ModeMsg", { fg = "#8f8f8f" })
hi(0, "MoreMsg", { fg = "#cdab89" })
hi(0, "MsgArea", { link = "Normal" })
hi(0, "MsgSeparator", { link = "VertSplit" })
hi(0, "NonText", { link = "Conceal" })
hi(0, "Normal", { bg = "#1a1a1a", fg = "#d1d1d1" })
hi(0, "NormalFloat", { bg = "#262626" })
hi(0, "Number", { fg = "#b696b1" })
hi(0, "NvimTreeBookmark", { fg = "#b6b696" })
hi(0, "NvimTreeEndOfBuffer", { fg = "#1a1a1a" })
hi(0, "NvimTreeExecFile", { bold = true, fg = "#b6b696" })
hi(0, "NvimTreeFolderIcon", { fg = "#9e96b6" })
hi(0, "NvimTreeGitDeleted", { fg = "#d78f88" })
hi(0, "NvimTreeGitDirty", { fg = "#d7b788" })
hi(0, "NvimTreeGitIgnored", { fg = "#4d4d4d" })
hi(0, "NvimTreeGitMerge", { fg = "#b098c8" })
hi(0, "NvimTreeGitNew", { fg = "#9e96b6" })
hi(0, "NvimTreeGitRenamed", { fg = "#d7b788" })
hi(0, "NvimTreeGitStaged", { fg = "#b6b696" })
hi(0, "NvimTreeImageFile", { bold = true, fg = "#b098c8" })
hi(0, "NvimTreeIndentMarker", { fg = "#9e96b6" })
hi(0, "NvimTreeLiveFilterPrefix", { bold = true, fg = "#b098c8" })
hi(0, "NvimTreeLiveFilterValue", { bold = true })
hi(0, "NvimTreeModifiedFile", { fg = "#b6b696" })
hi(0, "NvimTreeNormal", { bg = "#171717", fg = "#b0b0b0" })
hi(0, "NvimTreeOpenedFile", { bold = true, fg = "#b6b696" })
hi(0, "NvimTreePopup", { link = "NvimTreeNormal" })
hi(0, "NvimTreeRootFolder", { fg = "#171717" })
hi(0, "NvimTreeSpecialFile", { bold = true, fg = "#c4b392", underline = true })
hi(0, "NvimTreeSymlink", { bold = true, fg = "#9e96b6" })
hi(0, "NvimTreeWinSeparator", { bg = "#171717", fg = "#262626" })
hi(0, "NvimTreeWindowPicker", { bg = "#4493c8", bold = true, fg = "#ededed" })
hi(0, "Operator", { fg = "#bcaa9a" })
hi(0, "Pmenu", { bg = "#2b2b2b", fg = "#8f8f8f" })
hi(0, "PmenuSbar", { bg = "#262626" })
hi(0, "PmenuSel", { bg = "#4d4d4d" })
hi(0, "PmenuThumb", { bg = "#4d4d4d" })
hi(0, "PreProc", { fg = "#9e96b6" })
hi(0, "Question", { fg = "#cdab89" })
hi(0, "QuickFixLine", { link = "Normal" })
hi(0, "Repeat", { fg = "#d49191" })
hi(0, "Search", { bg = "#2b2b2b", fg = "#d1d1d1" })
hi(0, "SignColumn", { link = "LineNr" })
hi(0, "Special", { fg = "#cdab89" })
hi(0, "SpecialKey", { fg = "#cdab89" })
hi(0, "SpellBad", { fg = "#d78f88" })
hi(0, "SpellCap", { fg = "#d7b788" })
hi(0, "SpellLocal", { fg = "#d7b788" })
hi(0, "SpellRare", { fg = "#d7b788" })
hi(0, "StartifyBracket", { fg = "#6e6e6e" })
hi(0, "StartifyNumber", { fg = "#d1d1d1" })
hi(0, "StartifyPath", { fg = "#9e96b6" })
hi(0, "StartifySlash", { link = "StartifyPath" })
hi(0, "Statement", { fg = "#cdab89" })
hi(0, "StatusLine", { bg = "#2b2b2b", fg = "#b0b0b0" })
hi(0, "StatusLineNC", { bg = "#212121", fg = "#6e6e6e" })
hi(0, "Stl51a0cf_2b2b2b__", { bg = "#2b2b2b", fg = "#51a0cf" })
hi(0, "Stlb0b0b0_2b2b2b__", { bg = "#2b2b2b", fg = "#b0b0b0" })
hi(0, "Stlgrey_2b2b2b__", { bg = "#2b2b2b", fg = "#808080" })
hi(0, "String", { fg = "#c4b392" })
hi(0, "Substitute", { link = "IncSearch" })
hi(0, "TabLine", { bg = "#2b2b2b", fg = "#8f8f8f" })
hi(0, "TabLineFill", { link = "TabLine" })
hi(0, "TabLineSel", { bg = "#212121", fg = "#b0b0b0" })
hi(0, "TelescopeBorder", { fg = "#212121" })
hi(0, "TelescopeMatching", { fg = "#d1d1d1" })
hi(0, "TelescopeMultiIcon", { fg = "#d1d1d1" })
hi(0, "TelescopeMultiSelection", { fg = "#bcaa9a" })
hi(0, "TelescopeNormal", { bg = "#212121", fg = "#8f8f8f" })
hi(0, "TelescopePreviewBlock", { fg = "#b696b1" })
hi(0, "TelescopePreviewBorder", { bg = "#212121", fg = "#212121" })
hi(0, "TelescopePreviewCharDev", { fg = "#b696b1" })
hi(0, "TelescopePreviewDate", { fg = "#9e96b6" })
hi(0, "TelescopePreviewDirectory", { fg = "#9e96b6" })
hi(0, "TelescopePreviewExecute", { fg = "#c4b392" })
hi(0, "TelescopePreviewGroup", { fg = "#b696b1" })
hi(0, "TelescopePreviewHyphen", { fg = "#4d4d4d" })
hi(0, "TelescopePreviewLine", { bg = "#303030" })
hi(0, "TelescopePreviewLink", { fg = "#cdab89" })
hi(0, "TelescopePreviewMatch", { bg = "#2b2b2b", fg = "#d1d1d1" })
hi(0, "TelescopePreviewMessage", { bg = "#212121" })
hi(0, "TelescopePreviewMessageFillchar", { bg = "#212121" })
hi(0, "TelescopePreviewNormal", { bg = "#212121" })
hi(0, "TelescopePreviewPipe", { fg = "#b696b1" })
hi(0, "TelescopePreviewRead", { fg = "#b696b1" })
hi(0, "TelescopePreviewSize", { fg = "#c4b392" })
hi(0, "TelescopePreviewSocket", { fg = "#cdab89" })
hi(0, "TelescopePreviewSticky", { fg = "#cdab89" })
hi(0, "TelescopePreviewTitle", { fg = "#8f8f8f" })
hi(0, "TelescopePreviewUser", { fg = "#b696b1" })
hi(0, "TelescopePreviewWrite", { fg = "#cdab89" })
hi(0, "TelescopePromptBorder", { bg = "#212121", fg = "#212121" })
hi(0, "TelescopePromptCounter", { fg = "#6e6e6e" })
hi(0, "TelescopePromptNormal", { bg = "#212121" })
hi(0, "TelescopePromptPrefix", { fg = "#d1d1d1" })
hi(0, "TelescopePromptTitle", { bg = "#b0b0b0", fg = "#1a1a1a" })
hi(0, "TelescopeResultsBorder", { bg = "#212121", fg = "#212121" })
hi(0, "TelescopeResultsClass", { fg = "#9e96b6" })
hi(0, "TelescopeResultsComment", { fg = "#727246", italic = true })
hi(0, "TelescopeResultsConstant", { fg = "#b696b1" })
hi(0, "TelescopeResultsDiffAdd", { bg = "#353527" })
hi(0, "TelescopeResultsDiffChange", { bg = "#2f2a22" })
hi(0, "TelescopeResultsDiffDelete", { bg = "#3a2927" })
hi(0, "TelescopeResultsDiffUntracked", { fg = "#4d4d4d" })
hi(0, "TelescopeResultsField", { fg = "#9e96b6" })
hi(0, "TelescopeResultsFunction", { fg = "#9e96b6" })
hi(0, "TelescopeResultsIdentifier", { fg = "#d1d1d1" })
hi(0, "TelescopeResultsLineNr", { bg = "#171717", fg = "#6e6e6e" })
hi(0, "TelescopeResultsMethod", {})
hi(0, "TelescopeResultsNormal", { bg = "#212121", fg = "#8f8f8f" })
hi(0, "TelescopeResultsNumber", { fg = "#b696b1" })
hi(0, "TelescopeResultsOperator", { fg = "#bcaa9a" })
hi(0, "TelescopeResultsSpecialComment", { fg = "#cdab89" })
hi(0, "TelescopeResultsStruct", {})
hi(0, "TelescopeResultsTitle", { bg = "#212121", fg = "#212121" })
hi(0, "TelescopeResultsVariable", { fg = "#cdab89" })
hi(0, "TelescopeSelection", { bg = "#303030" })
hi(0, "TelescopeSelectionCaret", { fg = "#212121" })
hi(0, "TelescopeTitle", { fg = "#212121" })
hi(0, "TermCursor", { link = "Cursor" })
hi(0, "TermCursorNC", { bg = "#4d4d4d" })
hi(0, "Title", { fg = "#cdab89" })
hi(0, "Todo", { bg = "#c4b392", fg = "#1a1a1a" })
hi(0, "Type", { fg = "#bcaa9a" })
hi(0, "Underlined", { fg = "#8f8f8f", underline = true })
hi(0, "VertSplit", { bg = "#1a1a1a", fg = "#4d4d4d" })
hi(0, "Visual", { bg = "#2b2b2b" })
hi(0, "VisualNOS", { bg = "#262626" })
hi(0, "WarningMsg", { fg = "#d78f88" })
hi(0, "Whitespace", { fg = "#4d4d4d" })
hi(0, "WildMenu", { link = "PmenuSel" })
hi(0, "lCursor", { link = "Cursor" })
hi(0, "nvim_set_hl_x_hi_clear_bugfix", { fg = "#ff0000" })

-- Terminal colors
local g = vim.g

g.terminal_color_0 = "#1a1a1a"
g.terminal_color_1 = "#d78f88"
g.terminal_color_2 = "#b6b696"
g.terminal_color_3 = "#c4b392"
g.terminal_color_4 = "#9e96b6"
g.terminal_color_5 = "#b098c8"
g.terminal_color_6 = "#9e96b6"
g.terminal_color_7 = "#6e6e6e"
g.terminal_color_8 = "#212121"
g.terminal_color_9 = "#dea19c"
g.terminal_color_10 = "#c2c2a8"
g.terminal_color_11 = "#cdbfa2"
g.terminal_color_12 = "#aea8c2"
g.terminal_color_13 = "#bda9d1"
g.terminal_color_14 = "#aea8c2"
g.terminal_color_15 = "#b0b0b0"