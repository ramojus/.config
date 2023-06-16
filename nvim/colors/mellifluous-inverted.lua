-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd('highlight clear') end
vim.g.colors_name = "mellifluous-inverted"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@attribute", { fg = "#56391a" })
hi(0, "@character.special", { link = "Character" })
hi(0, "@constant.builtin", { link = "Constant" })
hi(0, "@constant.macro", { link = "Constant" })
hi(0, "@constructor", { link = "Function" })
hi(0, "@danger", { fg = "#753632" })
hi(0, "@debug", { fg = "#56391a" })
hi(0, "@define", { link = "PreProc" })
hi(0, "@environment", { fg = "#56391a" })
hi(0, "@environment.name", { link = "@environment" })
hi(0, "@error", { link = "Error" })
hi(0, "@exception", { fg = "#56391a" })
hi(0, "@field", { fg = "#252525" })
hi(0, "@function.builtin", { link = "Function" })
hi(0, "@function.macro", { link = "Function" })
hi(0, "@include", { fg = "#564f6b" })
hi(0, "@keyword.function", { fg = "#713739" })
hi(0, "@keyword.operator", { fg = "#56391a" })
hi(0, "@keyword.return", { fg = "#713739" })
hi(0, "@lsp.type.comment", { link = "Comment" })
hi(0, "@lsp.type.enum", { link = "Type" })
hi(0, "@lsp.type.enumMember", { link = "Constant" })
hi(0, "@lsp.type.escapeSequence", { fg = "#5f5f5f" })
hi(0, "@lsp.type.formatSpecifier", { link = "Operator" })
hi(0, "@lsp.type.namespace", { link = "Type" })
hi(0, "@lsp.type.operator", { link = "Operator" })
hi(0, "@lsp.type.parameter", { fg = "#252525" })
hi(0, "@lsp.type.property", { fg = "#252525" })
hi(0, "@lsp.typemod.keyword.controlFlow", { fg = "#713739" })
hi(0, "@lsp.typemod.variable.constant", { link = "Constant" })
hi(0, "@math", { fg = "#56391a" })
hi(0, "@namespace", { fg = "#504133" })
hi(0, "@note", { fg = "#414024" })
hi(0, "@parameter", { fg = "#252525" })
hi(0, "@parameter.reference", { link = "@parameter" })
hi(0, "@property", { link = "@field" })
hi(0, "@punctuation.bracket", { fg = "#504133" })
hi(0, "@punctuation.delimiter", { fg = "#504133" })
hi(0, "@punctuation.special", { fg = "#504133" })
hi(0, "@storage.class", { link = "StorageClass" })
hi(0, "@string.escape", { fg = "#4a3b1e" })
hi(0, "@string.regex", { fg = "#4a3b1e" })
hi(0, "@string.special", { fg = "#4a3b1e" })
hi(0, "@symbol", { link = "Character" })
hi(0, "@tag", { link = "Keyword" })
hi(0, "@tag.attribute", { fg = "#564f6b" })
hi(0, "@tag.delimiter", { fg = "#504133" })
hi(0, "@text.emphasis", { italic = true })
hi(0, "@text.literal", { link = "Character" })
hi(0, "@text.reference", { fg = "#60445c" })
hi(0, "@text.strike", { strikethrough = true })
hi(0, "@text.strong", { bold = true })
hi(0, "@text.title", { fg = "#56391a" })
hi(0, "@text.underline", { underline = true })
hi(0, "@text.uri", { fg = "#766e8d" })
hi(0, "@type.builtin", { link = "Type" })
hi(0, "@variable.builtin", { fg = "#56391a" })
hi(0, "@warning", { fg = "#4d3200" })
hi(0, "Boolean", { fg = "#60445c" })
hi(0, "Character", { fg = "#4a3b1e" })
hi(0, "CmpDocumentationBorder", { link = "VertSplit" })
hi(0, "CmpItemAbbr", { fg = "#5f5f5f" })
hi(0, "CmpItemAbbrDefault", { fg = "#5f5f5f" })
hi(0, "CmpItemAbbrDeprecated", { fg = "#828256" })
hi(0, "CmpItemAbbrDeprecatedDefault", { fg = "#828256" })
hi(0, "CmpItemAbbrMatch", { fg = "#5f5f5f" })
hi(0, "CmpItemAbbrMatchDefault", { fg = "#5f5f5f" })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = "#5f5f5f" })
hi(0, "CmpItemAbbrMatchFuzzyDefault", { fg = "#5f5f5f" })
hi(0, "CmpItemKind", { fg = "#56391a" })
hi(0, "CmpItemKindClass", { fg = "#56391a" })
hi(0, "CmpItemKindClassDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindColor", { fg = "#56391a" })
hi(0, "CmpItemKindColorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstant", { fg = "#56391a" })
hi(0, "CmpItemKindConstantDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstructor", { fg = "#56391a" })
hi(0, "CmpItemKindConstructorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindDefault", { fg = "#56391a" })
hi(0, "CmpItemKindEnum", { fg = "#56391a" })
hi(0, "CmpItemKindEnumDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEnumMember", { fg = "#56391a" })
hi(0, "CmpItemKindEnumMemberDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEvent", { fg = "#56391a" })
hi(0, "CmpItemKindEventDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindField", { fg = "#56391a" })
hi(0, "CmpItemKindFieldDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFile", { fg = "#56391a" })
hi(0, "CmpItemKindFileDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFolder", { fg = "#56391a" })
hi(0, "CmpItemKindFolderDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFunction", { fg = "#56391a" })
hi(0, "CmpItemKindFunctionDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindInterface", { fg = "#56391a" })
hi(0, "CmpItemKindInterfaceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindKeyword", { fg = "#56391a" })
hi(0, "CmpItemKindKeywordDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindMethod", { fg = "#56391a" })
hi(0, "CmpItemKindMethodDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindModule", { fg = "#56391a" })
hi(0, "CmpItemKindModuleDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindOperator", { fg = "#56391a" })
hi(0, "CmpItemKindOperatorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindProperty", { fg = "#56391a" })
hi(0, "CmpItemKindPropertyDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindReference", { fg = "#56391a" })
hi(0, "CmpItemKindReferenceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSnippet", { fg = "#56391a" })
hi(0, "CmpItemKindSnippetDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindStruct", { fg = "#56391a" })
hi(0, "CmpItemKindStructDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindText", { fg = "#56391a" })
hi(0, "CmpItemKindTextDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindTypeParameter", { fg = "#56391a" })
hi(0, "CmpItemKindTypeParameterDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindUnit", { fg = "#56391a" })
hi(0, "CmpItemKindUnitDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindValue", { fg = "#56391a" })
hi(0, "CmpItemKindValueDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindVariable", { fg = "#56391a" })
hi(0, "CmpItemKindVariableDefault", { link = "CmpItemKind" })
hi(0, "CmpItemMenu", { fg = "#5f5f5f" })
hi(0, "CmpItemMenuDefault", { fg = "#5f5f5f" })
hi(0, "CmpScrollThumb", { link = "PmenuThumb" })
hi(0, "ColorColumn", { bg = "#e2e2e2" })
hi(0, "Comment", { fg = "#828256", italic = true })
hi(0, "Conceal", { fg = "#a3a3a3" })
hi(0, "Conditional", { fg = "#713739" })
hi(0, "Constant", { fg = "#60445c" })
hi(0, "Cursor", { bg = "#56391a", fg = "#dedede" })
hi(0, "CursorColumn", { bg = "#d6d6d6" })
hi(0, "CursorIM", { link = "Cursor" })
hi(0, "CursorLine", { bg = "#d6d6d6" })
hi(0, "CursorLineNr", { bg = "#d6d6d6", fg = "#808080" })
hi(0, "Delimiter", { link = "Operator" })
hi(0, "DiagnosticDeprecated", { sp = "#cb0000", strikethrough = true })
hi(0, "DiagnosticError", { fg = "#753632" })
hi(0, "DiagnosticHint", { fg = "#57416c" })
hi(0, "DiagnosticInfo", { fg = "#564f6b" })
hi(0, "DiagnosticOk", { ctermfg = 10, fg = "#00520c" })
hi(0, "DiagnosticSignError", { bg = "#e2e2e2", fg = "#753632" })
hi(0, "DiagnosticSignHint", { bg = "#e2e2e2", fg = "#57416c" })
hi(0, "DiagnosticSignInfo", { bg = "#e2e2e2", fg = "#564f6b" })
hi(0, "DiagnosticSignWarn", { bg = "#e2e2e2", fg = "#4d3200" })
hi(0, "DiagnosticUnderlineError", { underline = true })
hi(0, "DiagnosticUnderlineHint", { underline = true })
hi(0, "DiagnosticUnderlineInfo", { underline = true })
hi(0, "DiagnosticUnderlineOk", { sp = "#00520c", underline = true })
hi(0, "DiagnosticUnderlineWarn", { underline = true })
hi(0, "DiagnosticVirtualTextError", { bg = "#d0d0d0", fg = "#753632" })
hi(0, "DiagnosticVirtualTextHint", { bg = "#d0d0d0", fg = "#57416c" })
hi(0, "DiagnosticVirtualTextInfo", { bg = "#d0d0d0", fg = "#564f6b" })
hi(0, "DiagnosticVirtualTextWarn", { bg = "#d0d0d0", fg = "#4d3200" })
hi(0, "DiagnosticWarn", { fg = "#4d3200" })
hi(0, "DiffAdd", { bg = "#c1c1b0" })
hi(0, "DiffChange", { bg = "#d0cabf" })
hi(0, "DiffDelete", { bg = "#d8c1be" })
hi(0, "DiffText", { bg = "#beb19f" })
hi(0, "Directory", { fg = "#564f6b" })
hi(0, "EndOfBuffer", { fg = "#dedede" })
hi(0, "Error", { fg = "#753632" })
hi(0, "ErrorMsg", { fg = "#753632" })
hi(0, "Exception", { fg = "#56391a" })
hi(0, "Float", { fg = "#60445c" })
hi(0, "FloatBorder", { bg = "#d0d0d0", fg = "#d0d0d0" })
hi(0, "FloatShadow", { bg = "#e2e2e2" })
hi(0, "FloatShadowThrough", { bg = "#ffffff", blend = 100 })
hi(0, "FloatTitle", { bg = "#d0d0d0", fg = "#828256" })
hi(0, "FoldColumn", { link = "Normal" })
hi(0, "Folded", { bg = "#d0d0d0", fg = "#5f5f5f" })
hi(0, "Function", { fg = "#564f6b" })
hi(0, "GitSignsAdd", { bg = "#e2e2e2", fg = "#999a7c" })
hi(0, "GitSignsAddInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsAddLn", { bg = "#c1c1b0" })
hi(0, "GitSignsAddLnInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsAddNr", { bg = "#e2e2e2", fg = "#999a7c" })
hi(0, "GitSignsAddPreview", { bg = "#c1c1b0" })
hi(0, "GitSignsChange", { bg = "#e2e2e2", fg = "#976d31" })
hi(0, "GitSignsChangeInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsChangeLn", { bg = "#d0cabf" })
hi(0, "GitSignsChangeLnInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsChangeNr", { bg = "#e2e2e2", fg = "#976d31" })
hi(0, "GitSignsChangedelete", { bg = "#e2e2e2", fg = "#976d31" })
hi(0, "GitSignsChangedeleteLn", { bg = "#d0cabf" })
hi(0, "GitSignsChangedeleteNr", { bg = "#e2e2e2", fg = "#976d31" })
hi(0, "GitSignsCurrentLineBlame", { fg = "#a3a3a3" })
hi(0, "GitSignsDelete", { bg = "#e2e2e2", fg = "#d47064" })
hi(0, "GitSignsDeleteInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsDeleteLnInline", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsDeleteNr", { bg = "#e2e2e2", fg = "#d47064" })
hi(0, "GitSignsDeletePreview", { bg = "#d8c1be" })
hi(0, "GitSignsDeleteVirtLn", { bg = "#d8c1be" })
hi(0, "GitSignsDeleteVirtLnInLine", { bg = "#56391a", fg = "#dedede" })
hi(0, "GitSignsStagedAdd", { bg = "#e2e2e2", fg = "#cacbb9" })
hi(0, "GitSignsStagedAddLn", { bg = "#c1c1b0" })
hi(0, "GitSignsStagedAddNr", { bg = "#e2e2e2", fg = "#cacbb9" })
hi(0, "GitSignsStagedChange", { bg = "#e2e2e2", fg = "#ccb392" })
hi(0, "GitSignsStagedChangeLn", { bg = "#d0cabf" })
hi(0, "GitSignsStagedChangeNr", { bg = "#e2e2e2", fg = "#ccb392" })
hi(0, "GitSignsStagedChangedelete", { bg = "#e2e2e2", fg = "#ccb392" })
hi(0, "GitSignsStagedChangedeleteLn", { bg = "#d0cabf" })
hi(0, "GitSignsStagedChangedeleteNr", { bg = "#e2e2e2", fg = "#ccb392" })
hi(0, "GitSignsStagedDelete", { bg = "#e2e2e2", fg = "#f3b6ae" })
hi(0, "GitSignsStagedDeleteNr", { bg = "#e2e2e2", fg = "#f3b6ae" })
hi(0, "GitSignsStagedTopdelete", { bg = "#e2e2e2", fg = "#f3b6ae" })
hi(0, "GitSignsStagedTopdeleteNr", { bg = "#e2e2e2", fg = "#f3b6ae" })
hi(0, "GitSignsTopdelete", { bg = "#e2e2e2", fg = "#d47064" })
hi(0, "GitSignsTopdeleteNr", { bg = "#e2e2e2", fg = "#d47064" })
hi(0, "GitSignsUntracked", { bg = "#e2e2e2", fg = "#999a7c" })
hi(0, "GitSignsUntrackedLn", { bg = "#c1c1b0" })
hi(0, "GitSignsUntrackedNr", { bg = "#e2e2e2", fg = "#999a7c" })
hi(0, "GitSignsVirtLnum", { bg = "#d8c1be" })
hi(0, "Identifier", { fg = "#252525" })
hi(0, "Ignore", { fg = "#a3a3a3" })
hi(0, "IncSearch", { bg = "#56391a", fg = "#dedede" })
hi(0, "IndentBlanklineChar", { fg = "#cacaca" })
hi(0, "IndentBlanklineContextChar", { fg = "#a3a3a3" })
hi(0, "IndentBlanklineContextStart", { sp = "#713739", underline = true })
hi(0, "IndentBlanklineSpaceChar", { link = "Whitespace" })
hi(0, "IndentBlanklineSpaceCharBlankline", { fg = "#a3a3a3", nocombine = true })
hi(0, "Keyword", { fg = "#56391a" })
hi(0, "Label", { fg = "#713739" })
hi(0, "LineNr", { bg = "#e2e2e2", fg = "#808080" })
hi(0, "LspCodeLens", { bg = "#d6d6d6" })
hi(0, "LspCodeLensSeparator", { fg = "#a3a3a3" })
hi(0, "LspInfoBorder", { fg = "#713739" })
hi(0, "LspInfoFiletype", { fg = "#504133" })
hi(0, "LspInfoList", { fg = "#564f6b" })
hi(0, "LspInfoTip", { fg = "#828256", italic = true })
hi(0, "LspInfoTitle", { fg = "#56391a" })
hi(0, "LspReferenceRead", { link = "LspReferenceText" })
hi(0, "LspReferenceText", { bg = "#d0d0d0" })
hi(0, "LspReferenceWrite", { link = "LspReferenceText" })
hi(0, "LspSignatureActiveParameter", { bg = "#cacaca" })
hi(0, "MatchParen", { bg = "#cacaca", fg = "#713739" })
hi(0, "ModeMsg", { fg = "#5f5f5f" })
hi(0, "MoreMsg", { fg = "#56391a" })
hi(0, "MsgArea", { link = "Normal" })
hi(0, "MsgSeparator", { link = "VertSplit" })
hi(0, "NonText", { link = "Conceal" })
hi(0, "Normal", { bg = "#dedede", fg = "#252525" })
hi(0, "NormalFloat", { bg = "#d0d0d0" })
hi(0, "Number", { fg = "#60445c" })
hi(0, "NvimInternalError", { bg = "#cb0000", ctermbg = 9, ctermfg = 9, fg = "#cb0000" })
hi(0, "NvimTreeBookmark", { fg = "#414024" })
hi(0, "NvimTreeEndOfBuffer", { fg = "#dedede" })
hi(0, "NvimTreeExecFile", { bold = true, fg = "#414024" })
hi(0, "NvimTreeFolderIcon", { fg = "#564f6b" })
hi(0, "NvimTreeGitDeleted", { fg = "#753632" })
hi(0, "NvimTreeGitDirty", { fg = "#4d3200" })
hi(0, "NvimTreeGitIgnored", { fg = "#a3a3a3" })
hi(0, "NvimTreeGitMerge", { fg = "#57416c" })
hi(0, "NvimTreeGitNew", { fg = "#564f6b" })
hi(0, "NvimTreeGitRenamed", { fg = "#4d3200" })
hi(0, "NvimTreeGitStaged", { fg = "#414024" })
hi(0, "NvimTreeImageFile", { bold = true, fg = "#57416c" })
hi(0, "NvimTreeIndentMarker", { fg = "#564f6b" })
hi(0, "NvimTreeLiveFilterPrefix", { bold = true, fg = "#57416c" })
hi(0, "NvimTreeLiveFilterValue", { bold = true })
hi(0, "NvimTreeModifiedFile", { fg = "#414024" })
hi(0, "NvimTreeNormal", { bg = "#e2e2e2", fg = "#414141" })
hi(0, "NvimTreeOpenedFile", { bold = true, fg = "#414024" })
hi(0, "NvimTreePopup", { link = "NvimTreeNormal" })
hi(0, "NvimTreeRootFolder", { fg = "#e2e2e2" })
hi(0, "NvimTreeSpecialFile", { bold = true, fg = "#4a3b1e", underline = true })
hi(0, "NvimTreeSymlink", { bold = true, fg = "#564f6b" })
hi(0, "NvimTreeWinSeparator", { bg = "#e2e2e2", fg = "#d0d0d0" })
hi(0, "NvimTreeWindowPicker", { bg = "#106a9c", bold = true, fg = "#0c0c0c" })
hi(0, "Operator", { fg = "#504133" })
hi(0, "Pmenu", { bg = "#cacaca", fg = "#5f5f5f" })
hi(0, "PmenuSbar", { bg = "#d0d0d0" })
hi(0, "PmenuSel", { bg = "#a3a3a3" })
hi(0, "PmenuThumb", { bg = "#a3a3a3" })
hi(0, "PreProc", { fg = "#564f6b" })
hi(0, "Question", { fg = "#56391a" })
hi(0, "QuickFixLine", { link = "Normal" })
hi(0, "RedrawDebugClear", { bg = "#6c6c00", ctermbg = 11 })
hi(0, "RedrawDebugComposed", { bg = "#349f30", ctermbg = 10 })
hi(0, "RedrawDebugRecompose", { bg = "#cb0000", ctermbg = 9 })
hi(0, "Repeat", { fg = "#713739" })
hi(0, "Search", { bg = "#cacaca", fg = "#252525" })
hi(0, "SignColumn", { link = "LineNr" })
hi(0, "Special", { fg = "#56391a" })
hi(0, "SpecialKey", { fg = "#56391a" })
hi(0, "SpellBad", { fg = "#753632" })
hi(0, "SpellCap", { fg = "#4d3200" })
hi(0, "SpellLocal", { fg = "#4d3200" })
hi(0, "SpellRare", { fg = "#4d3200" })
hi(0, "StartifyBracket", { fg = "#808080" })
hi(0, "StartifyNumber", { fg = "#252525" })
hi(0, "StartifyPath", { fg = "#564f6b" })
hi(0, "StartifySlash", { link = "StartifyPath" })
hi(0, "Statement", { fg = "#56391a" })
hi(0, "StatusLine", { bg = "#cacaca", fg = "#414141" })
hi(0, "StatusLineNC", { bg = "#d6d6d6", fg = "#808080" })
hi(0, "Stl51a0cf_2b2b2b__", { bg = "#cacaca", fg = "#00618b" })
hi(0, "Stlb0b0b0_2b2b2b__", { bg = "#cacaca", fg = "#414141" })
hi(0, "Stlgrey_2b2b2b__", { bg = "#cacaca", fg = "#6e6e6e" })
hi(0, "String", { fg = "#4a3b1e" })
hi(0, "Substitute", { link = "IncSearch" })
hi(0, "TabLine", { bg = "#cacaca", fg = "#5f5f5f" })
hi(0, "TabLineFill", { link = "TabLine" })
hi(0, "TabLineSel", { bg = "#d6d6d6", fg = "#414141" })
hi(0, "TelescopeBorder", { fg = "#d6d6d6" })
hi(0, "TelescopeMatching", { fg = "#252525" })
hi(0, "TelescopeMultiIcon", { fg = "#252525" })
hi(0, "TelescopeMultiSelection", { fg = "#504133" })
hi(0, "TelescopeNormal", { bg = "#d6d6d6", fg = "#5f5f5f" })
hi(0, "TelescopePreviewBlock", { fg = "#60445c" })
hi(0, "TelescopePreviewBorder", { bg = "#d6d6d6", fg = "#d6d6d6" })
hi(0, "TelescopePreviewCharDev", { fg = "#60445c" })
hi(0, "TelescopePreviewDate", { fg = "#564f6b" })
hi(0, "TelescopePreviewDirectory", { fg = "#564f6b" })
hi(0, "TelescopePreviewExecute", { fg = "#4a3b1e" })
hi(0, "TelescopePreviewGroup", { fg = "#60445c" })
hi(0, "TelescopePreviewHyphen", { fg = "#a3a3a3" })
hi(0, "TelescopePreviewLine", { bg = "#c4c4c4" })
hi(0, "TelescopePreviewLink", { fg = "#56391a" })
hi(0, "TelescopePreviewMatch", { bg = "#cacaca", fg = "#252525" })
hi(0, "TelescopePreviewMessage", { bg = "#d6d6d6" })
hi(0, "TelescopePreviewMessageFillchar", { bg = "#d6d6d6" })
hi(0, "TelescopePreviewNormal", { bg = "#d6d6d6" })
hi(0, "TelescopePreviewPipe", { fg = "#60445c" })
hi(0, "TelescopePreviewRead", { fg = "#60445c" })
hi(0, "TelescopePreviewSize", { fg = "#4a3b1e" })
hi(0, "TelescopePreviewSocket", { fg = "#56391a" })
hi(0, "TelescopePreviewSticky", { fg = "#56391a" })
hi(0, "TelescopePreviewTitle", { fg = "#5f5f5f" })
hi(0, "TelescopePreviewUser", { fg = "#60445c" })
hi(0, "TelescopePreviewWrite", { fg = "#56391a" })
hi(0, "TelescopePromptBorder", { bg = "#d6d6d6", fg = "#d6d6d6" })
hi(0, "TelescopePromptCounter", { fg = "#808080" })
hi(0, "TelescopePromptNormal", { bg = "#d6d6d6" })
hi(0, "TelescopePromptPrefix", { fg = "#252525" })
hi(0, "TelescopePromptTitle", { bg = "#414141", fg = "#dedede" })
hi(0, "TelescopeResultsBorder", { bg = "#d6d6d6", fg = "#d6d6d6" })
hi(0, "TelescopeResultsClass", { fg = "#564f6b" })
hi(0, "TelescopeResultsComment", { fg = "#828256", italic = true })
hi(0, "TelescopeResultsConstant", { fg = "#60445c" })
hi(0, "TelescopeResultsDiffAdd", { bg = "#c1c1b0" })
hi(0, "TelescopeResultsDiffChange", { bg = "#d0cabf" })
hi(0, "TelescopeResultsDiffDelete", { bg = "#d8c1be" })
hi(0, "TelescopeResultsDiffUntracked", { fg = "#a3a3a3" })
hi(0, "TelescopeResultsField", { fg = "#564f6b" })
hi(0, "TelescopeResultsFunction", { fg = "#564f6b" })
hi(0, "TelescopeResultsIdentifier", { fg = "#252525" })
hi(0, "TelescopeResultsLineNr", { bg = "#e2e2e2", fg = "#808080" })
hi(0, "TelescopeResultsMethod", {})
hi(0, "TelescopeResultsNormal", { bg = "#d6d6d6", fg = "#5f5f5f" })
hi(0, "TelescopeResultsNumber", { fg = "#60445c" })
hi(0, "TelescopeResultsOperator", { fg = "#504133" })
hi(0, "TelescopeResultsSpecialComment", { fg = "#56391a" })
hi(0, "TelescopeResultsStruct", {})
hi(0, "TelescopeResultsTitle", { bg = "#d6d6d6", fg = "#d6d6d6" })
hi(0, "TelescopeResultsVariable", { fg = "#56391a" })
hi(0, "TelescopeSelection", { bg = "#c4c4c4" })
hi(0, "TelescopeSelectionCaret", { fg = "#d6d6d6" })
hi(0, "TelescopeTitle", { fg = "#d6d6d6" })
hi(0, "TermCursor", { link = "Cursor" })
hi(0, "TermCursorNC", { bg = "#a3a3a3" })
hi(0, "Title", { fg = "#56391a" })
hi(0, "Todo", { fg = "#713739" })
hi(0, "Type", { fg = "#504133" })
hi(0, "Underlined", { fg = "#5f5f5f", underline = true })
hi(0, "VertSplit", { bg = "#dedede", fg = "#a3a3a3" })
hi(0, "Visual", { bg = "#cacaca" })
hi(0, "VisualNOS", { bg = "#d0d0d0" })
hi(0, "WarningMsg", { fg = "#753632" })
hi(0, "Whitespace", { fg = "#a3a3a3" })
hi(0, "WildMenu", { link = "PmenuSel" })
hi(0, "lCursor", { link = "Cursor" })
hi(0, "nvim_set_hl_x_hi_clear_bugfix", { fg = "#cb0000" })

-- Terminal colors
local g = vim.g

g.terminal_color_0 = "#dedede"
g.terminal_color_1 = "#753632"
g.terminal_color_2 = "#414024"
g.terminal_color_3 = "#4a3b1e"
g.terminal_color_4 = "#564f6b"
g.terminal_color_5 = "#57416c"
g.terminal_color_6 = "#564f6b"
g.terminal_color_7 = "#808080"
g.terminal_color_8 = "#d6d6d6"
g.terminal_color_9 = "#602e2c"
g.terminal_color_10 = "#363520"
g.terminal_color_11 = "#3d3219"
g.terminal_color_12 = "#464157"
g.terminal_color_13 = "#483758"
g.terminal_color_14 = "#464157"
g.terminal_color_15 = "#414141"
