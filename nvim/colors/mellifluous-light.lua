-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd('highlight clear') end
vim.g.colors_name = "mellifluous-light"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@attribute", { fg = "#a16927" })
hi(0, "@character.special", { link = "Character" })
hi(0, "@constant.builtin", { link = "Constant" })
hi(0, "@constant.macro", { link = "Constant" })
hi(0, "@constructor", { link = "Function" })
hi(0, "@danger", { fg = "#b73242" })
hi(0, "@debug", { fg = "#a16927" })
hi(0, "@define", { link = "PreProc" })
hi(0, "@environment", { fg = "#a16927" })
hi(0, "@environment.name", { link = "@environment" })
hi(0, "@error", { link = "Error" })
hi(0, "@field", { fg = "#1b1b1b" })
hi(0, "@function.builtin", { link = "Function" })
hi(0, "@function.macro", { link = "Function" })
hi(0, "@include", { link = "Function" })
hi(0, "@keyword.function", { fg = "#b73242" })
hi(0, "@keyword.operator", { fg = "#a16927" })
hi(0, "@keyword.return", { fg = "#b73242" })
hi(0, "@lsp.type.comment", {})
hi(0, "@lsp.type.enum", { link = "Type" })
hi(0, "@lsp.type.enumMember", { link = "Constant" })
hi(0, "@lsp.type.escapeSequence", { fg = "#686868" })
hi(0, "@lsp.type.formatSpecifier", { link = "Operator" })
hi(0, "@lsp.type.namespace", { link = "Type" })
hi(0, "@lsp.type.operator", { link = "Operator" })
hi(0, "@lsp.type.parameter", {})
hi(0, "@lsp.type.property", { fg = "#1b1b1b" })
hi(0, "@lsp.type.variable", {})
hi(0, "@lsp.typemod.keyword.controlFlow", { fg = "#b73242" })
hi(0, "@lsp.typemod.variable.constant", { link = "Constant" })
hi(0, "@math", { fg = "#a16927" })
hi(0, "@namespace", { link = "Type" })
hi(0, "@neorg.anchors.declaration", { link = "@text.reference" })
hi(0, "@neorg.anchors.declaration.delimiter", { link = "NonText" })
hi(0, "@neorg.anchors.definition.delimiter", { link = "NonText" })
hi(0, "@neorg.definitions.content", { link = "@text.emphasis" })
hi(0, "@neorg.definitions.prefix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.definitions.suffix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.definitions.title", { link = "@text.strong" })
hi(0, "@neorg.delimiters.horizontal_line", { link = "@punctuation.delimiter" })
hi(0, "@neorg.delimiters.strong", { link = "@punctuation.delimiter" })
hi(0, "@neorg.delimiters.weak", { link = "@punctuation.delimiter" })
hi(0, "@neorg.error", { link = "@error" })
hi(0, "@neorg.footnotes.content", { link = "@text.emphasis" })
hi(0, "@neorg.footnotes.prefix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.footnotes.suffix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.footnotes.title", { link = "@text.strong" })
hi(0, "@neorg.headings.1.prefix", { link = "@attribute" })
hi(0, "@neorg.headings.1.title", { link = "@attribute" })
hi(0, "@neorg.headings.2.prefix", { link = "@label" })
hi(0, "@neorg.headings.2.title", { link = "@label" })
hi(0, "@neorg.headings.3.prefix", { link = "@constant" })
hi(0, "@neorg.headings.3.title", { link = "@constant" })
hi(0, "@neorg.headings.4.prefix", { link = "@string" })
hi(0, "@neorg.headings.4.title", { link = "@string" })
hi(0, "@neorg.headings.5.prefix", { link = "@label" })
hi(0, "@neorg.headings.5.title", { link = "@label" })
hi(0, "@neorg.headings.6.prefix", { link = "@constructor" })
hi(0, "@neorg.headings.6.title", { link = "@constructor" })
hi(0, "@neorg.links.description", { link = "@text.uri" })
hi(0, "@neorg.links.description.delimiter", { link = "NonText" })
hi(0, "@neorg.links.file", { link = "@comment" })
hi(0, "@neorg.links.file.delimiter", { link = "NonText" })
hi(0, "@neorg.links.location.definition", { link = "@neorg.definitions.title" })
hi(0, "@neorg.links.location.definition.prefix", { link = "@neorg.definitions.prefix" })
hi(0, "@neorg.links.location.delimiter", { link = "NonText" })
hi(0, "@neorg.links.location.external_file", { link = "@label" })
hi(0, "@neorg.links.location.external_file.prefix", { link = "@label" })
hi(0, "@neorg.links.location.footnote", { link = "@neorg.footnotes.title" })
hi(0, "@neorg.links.location.footnote.prefix", { link = "@neorg.footnotes.prefix" })
hi(0, "@neorg.links.location.generic", { link = "@type" })
hi(0, "@neorg.links.location.generic.prefix", { link = "@type" })
hi(0, "@neorg.links.location.heading.1", { link = "@neorg.headings.1.title" })
hi(0, "@neorg.links.location.heading.1.prefix", { link = "@neorg.headings.1.prefix" })
hi(0, "@neorg.links.location.heading.2", { link = "@neorg.headings.2.title" })
hi(0, "@neorg.links.location.heading.2.prefix", { link = "@neorg.headings.2.prefix" })
hi(0, "@neorg.links.location.heading.3", { link = "@neorg.headings.3.title" })
hi(0, "@neorg.links.location.heading.3.prefix", { link = "@neorg.headings.3.prefix" })
hi(0, "@neorg.links.location.heading.4", { link = "@neorg.headings.4.title" })
hi(0, "@neorg.links.location.heading.4.prefix", { link = "@neorg.headings.4.prefix" })
hi(0, "@neorg.links.location.heading.5", { link = "@neorg.headings.5.title" })
hi(0, "@neorg.links.location.heading.5.prefix", { link = "@neorg.headings.5.prefix" })
hi(0, "@neorg.links.location.heading.6", { link = "@neorg.headings.6.title" })
hi(0, "@neorg.links.location.heading.6.prefix", { link = "@neorg.headings.6.prefix" })
hi(0, "@neorg.links.location.marker", { link = "@neorg.markers.title" })
hi(0, "@neorg.links.location.marker.prefix", { link = "@neorg.markers.prefix" })
hi(0, "@neorg.links.location.url", { link = "@text.uri" })
hi(0, "@neorg.lists.ordered.prefix", { link = "@repeat" })
hi(0, "@neorg.lists.unordered.prefix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.markup.bold", { link = "@text.strong" })
hi(0, "@neorg.markup.bold.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.free_form_delimiter", { link = "NonText" })
hi(0, "@neorg.markup.inline_comment", { fg = "#101010" })
hi(0, "@neorg.markup.inline_comment.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.inline_math", { link = "@text.math" })
hi(0, "@neorg.markup.inline_math.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.italic", { link = "@text.emphasis" })
hi(0, "@neorg.markup.italic.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.spoiler", { link = "@text.danger" })
hi(0, "@neorg.markup.spoiler.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.strikethrough", { strikethrough = true })
hi(0, "@neorg.markup.strikethrough.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.subscript", { link = "@label" })
hi(0, "@neorg.markup.subscript.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.superscript", { link = "@number" })
hi(0, "@neorg.markup.superscript.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.underline", { underline = true })
hi(0, "@neorg.markup.underline.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.variable", { link = "@function.macro" })
hi(0, "@neorg.markup.variable.delimiter", { link = "NonText" })
hi(0, "@neorg.markup.verbatim", { fg = "#151515" })
hi(0, "@neorg.markup.verbatim.delimiter", { link = "NonText" })
hi(0, "@neorg.modifiers.escape", { link = "@type" })
hi(0, "@neorg.modifiers.link", { link = "NonText" })
hi(0, "@neorg.quotes.1.content", { link = "@punctuation.delimiter" })
hi(0, "@neorg.quotes.1.prefix", { link = "@punctuation.delimiter" })
hi(0, "@neorg.quotes.2.content", { link = "Blue" })
hi(0, "@neorg.quotes.2.prefix", { link = "Blue" })
hi(0, "@neorg.quotes.3.content", { link = "Yellow" })
hi(0, "@neorg.quotes.3.prefix", { link = "Yellow" })
hi(0, "@neorg.quotes.4.content", { link = "Red" })
hi(0, "@neorg.quotes.4.prefix", { link = "Red" })
hi(0, "@neorg.quotes.5.content", { link = "Green" })
hi(0, "@neorg.quotes.5.prefix", { link = "Green" })
hi(0, "@neorg.quotes.6.content", { link = "Brown" })
hi(0, "@neorg.quotes.6.prefix", { link = "Brown" })
hi(0, "@neorg.selection_window.arrow", { link = "@none" })
hi(0, "@neorg.selection_window.heading", { link = "@annotation" })
hi(0, "@neorg.selection_window.key", { link = "@namespace" })
hi(0, "@neorg.selection_window.keyname", { link = "@constant" })
hi(0, "@neorg.selection_window.nestedkeyname", { link = "@string" })
hi(0, "@neorg.tags.carryover.begin", { link = "@label" })
hi(0, "@neorg.tags.carryover.name", { link = "@none" })
hi(0, "@neorg.tags.carryover.name.delimiter", { link = "@none" })
hi(0, "@neorg.tags.carryover.name.word", { link = "@label" })
hi(0, "@neorg.tags.carryover.parameters", { link = "@string" })
hi(0, "@neorg.tags.comment.content", { link = "@comment" })
hi(0, "@neorg.tags.ranged_verbatim.begin", { link = "@keyword" })
hi(0, "@neorg.tags.ranged_verbatim.code_block", { bg = "#c4c4c4" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.array.bracket", { link = "@punctuation.bracket" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.array.value", { link = "@none" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.authors", { link = "@annotation" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.categories", { link = "@keyword" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.created", { link = "@float" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.description", { link = "@label" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.key", { link = "@field" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.number", { link = "@number" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.object.bracket", { link = "@punctuation.bracket" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.title", { link = "@text.title" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.trailing", { link = "@repeat" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.updated", { link = "@float" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.value", { link = "@string" })
hi(0, "@neorg.tags.ranged_verbatim.document_meta.version", { link = "@float" })
hi(0, "@neorg.tags.ranged_verbatim.end", { link = "@keyword" })
hi(0, "@neorg.tags.ranged_verbatim.name", { link = "@none" })
hi(0, "@neorg.tags.ranged_verbatim.name.delimiter", { link = "@none" })
hi(0, "@neorg.tags.ranged_verbatim.name.word", { link = "@keyword" })
hi(0, "@neorg.tags.ranged_verbatim.parameters", { link = "@type" })
hi(0, "@neorg.todo_items.cancelled", { link = "NonText" })
hi(0, "@neorg.todo_items.done", { link = "@string" })
hi(0, "@neorg.todo_items.on_hold", { link = "@text.note" })
hi(0, "@neorg.todo_items.pending", { link = "@namespace" })
hi(0, "@neorg.todo_items.recurring", { link = "@repeat" })
hi(0, "@neorg.todo_items.uncertain", { link = "@boolean" })
hi(0, "@neorg.todo_items.undone", { link = "@punctuation.delimiter" })
hi(0, "@neorg.todo_items.urgent", { link = "@text.danger" })
hi(0, "@parameter", { fg = "#1b1b1b" })
hi(0, "@parameter.reference", { link = "@parameter" })
hi(0, "@property", { link = "@field" })
hi(0, "@punctuation.bracket", { link = "Operator" })
hi(0, "@punctuation.delimiter", { link = "Operator" })
hi(0, "@punctuation.special", { link = "Operator" })
hi(0, "@storage.class", { link = "StorageClass" })
hi(0, "@string.escape", { link = "Character" })
hi(0, "@string.regex", { link = "Character" })
hi(0, "@string.special", { link = "Character" })
hi(0, "@symbol", { link = "Character" })
hi(0, "@tag", { link = "Keyword" })
hi(0, "@tag.attribute", { link = "Function" })
hi(0, "@tag.delimiter", { link = "Operator" })
hi(0, "@text.danger", { bg = "#d9cec1", fg = "#a16927" })
hi(0, "@text.emphasis", { italic = true })
hi(0, "@text.literal", { link = "Character" })
hi(0, "@text.reference", { fg = "#863e7f" })
hi(0, "@text.strike", { strikethrough = true })
hi(0, "@text.strong", { bold = true })
hi(0, "@text.title", { fg = "#a16927" })
hi(0, "@text.todo", { link = "Todo" })
hi(0, "@text.underline", { underline = true })
hi(0, "@text.uri", { fg = "#7f67b4" })
hi(0, "@text.warning", { bg = "#e1c6c8", fg = "#c7414e" })
hi(0, "@type.builtin", { link = "Type" })
hi(0, "@variable.builtin", { fg = "#a16927" })
hi(0, "@warning", { fg = "#a16927" })
hi(0, "Character", { fg = "#9c792a" })
hi(0, "CmpDocumentationBorder", { bg = "#fefefe" })
hi(0, "CmpItemAbbr", { fg = "#919191" })
hi(0, "CmpItemAbbrDefault", { fg = "#919191" })
hi(0, "CmpItemAbbrDeprecated", { fg = "#969555" })
hi(0, "CmpItemAbbrDeprecatedDefault", { fg = "#969555" })
hi(0, "CmpItemAbbrMatch", { fg = "#1b1b1b" })
hi(0, "CmpItemAbbrMatchDefault", { fg = "#919191" })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = "#1b1b1b" })
hi(0, "CmpItemAbbrMatchFuzzyDefault", { fg = "#919191" })
hi(0, "CmpItemKind", { fg = "#926f4e" })
hi(0, "CmpItemKindClass", { fg = "#926f4e" })
hi(0, "CmpItemKindClassDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindColor", { fg = "#b73242" })
hi(0, "CmpItemKindColorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstant", { fg = "#863e7f" })
hi(0, "CmpItemKindConstantDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindConstructor", { fg = "#5a418a" })
hi(0, "CmpItemKindConstructorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindDefault", { fg = "#a16927" })
hi(0, "CmpItemKindEnum", { fg = "#863e7f" })
hi(0, "CmpItemKindEnumDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEnumMember", { fg = "#863e7f" })
hi(0, "CmpItemKindEnumMemberDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindEvent", { fg = "#b73242" })
hi(0, "CmpItemKindEventDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindField", { fg = "#1b1b1b" })
hi(0, "CmpItemKindFieldDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFile", { fg = "#5a418a" })
hi(0, "CmpItemKindFileDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFolder", { fg = "#5a418a" })
hi(0, "CmpItemKindFolderDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindFunction", { fg = "#5a418a" })
hi(0, "CmpItemKindFunctionDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindInterface", { fg = "#926f4e" })
hi(0, "CmpItemKindInterfaceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindKeyword", { fg = "#a16927" })
hi(0, "CmpItemKindKeywordDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindMethod", { fg = "#5a418a" })
hi(0, "CmpItemKindMethodDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindModule", { fg = "#5a418a" })
hi(0, "CmpItemKindModuleDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindOperator", { fg = "#686868" })
hi(0, "CmpItemKindOperatorDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindProperty", { fg = "#1b1b1b" })
hi(0, "CmpItemKindPropertyDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindReference", { fg = "#926f4e" })
hi(0, "CmpItemKindReferenceDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindSnippet", { fg = "#a16927" })
hi(0, "CmpItemKindSnippetDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindStruct", { fg = "#926f4e" })
hi(0, "CmpItemKindStructDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindText", { fg = "#9c792a" })
hi(0, "CmpItemKindTextDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindTypeParameter", { fg = "#926f4e" })
hi(0, "CmpItemKindTypeParameterDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindUnit", { fg = "#926f4e" })
hi(0, "CmpItemKindUnitDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindValue", { fg = "#863e7f" })
hi(0, "CmpItemKindValueDefault", { link = "CmpItemKind" })
hi(0, "CmpItemKindVariable", { fg = "#1b1b1b" })
hi(0, "CmpItemKindVariableDefault", { link = "CmpItemKind" })
hi(0, "CmpItemMenu", { fg = "#686868" })
hi(0, "CmpItemMenuDefault", { fg = "#919191" })
hi(0, "ColorColumn", { bg = "#e0e0e0" })
hi(0, "Comment", { fg = "#969555", italic = true })
hi(0, "Conceal", { fg = "#a0a0a0" })
hi(0, "Conditional", { fg = "#b73242" })
hi(0, "Constant", { fg = "#863e7f" })
hi(0, "Cursor", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "CursorColumn", { bg = "#f2f2f2" })
hi(0, "CursorIM", { link = "Cursor" })
hi(0, "CursorLine", { bg = "#f2f2f2" })
hi(0, "CursorLineNr", { bg = "#ebebeb", fg = "#919191" })
hi(0, "Delimiter", { link = "Operator" })
hi(0, "DiagnosticError", { fg = "#c7414e" })
hi(0, "DiagnosticHint", { fg = "#a2589a" })
hi(0, "DiagnosticInfo", { fg = "#7f67b3" })
hi(0, "DiagnosticSignError", { bg = "#e0e0e0", fg = "#c7414e" })
hi(0, "DiagnosticSignHint", { bg = "#e0e0e0", fg = "#a2589a" })
hi(0, "DiagnosticSignInfo", { bg = "#e0e0e0", fg = "#7f67b3" })
hi(0, "DiagnosticSignWarn", { bg = "#e0e0e0", fg = "#a16927" })
hi(0, "DiagnosticUnderlineError", { underline = true })
hi(0, "DiagnosticUnderlineHint", { underline = true })
hi(0, "DiagnosticUnderlineInfo", { underline = true })
hi(0, "DiagnosticUnderlineWarn", { underline = true })
hi(0, "DiagnosticVirtualTextError", { bg = "#e3d3d5", fg = "#c7414e" })
hi(0, "DiagnosticVirtualTextHint", { bg = "#dfd6de", fg = "#a2589a" })
hi(0, "DiagnosticVirtualTextInfo", { bg = "#dbd8e1", fg = "#7f67b3" })
hi(0, "DiagnosticVirtualTextWarn", { bg = "#dfd8d0", fg = "#a16927" })
hi(0, "DiagnosticWarn", { fg = "#a16927" })
hi(0, "DiffAdd", { bg = "#dad9b3" })
hi(0, "DiffChange", { bg = "#e6d2bc" })
hi(0, "DiffDelete", { bg = "#edc9cd" })
hi(0, "DiffText", { bg = "#debe97" })
hi(0, "Directory", { fg = "#5a418a" })
hi(0, "EndOfBuffer", { fg = "#e7e7e7" })
hi(0, "Error", { fg = "#b73242" })
hi(0, "ErrorMsg", { fg = "#b73242" })
hi(0, "Exception", { fg = "#a16927" })
hi(0, "Float", { link = "Constant" })
hi(0, "FloatBorder", { bg = "#f8f8f8", fg = "#f8f8f8" })
hi(0, "FloatShadow", { bg = "#e0e0e0" })
hi(0, "FloatTitle", { bg = "#f8f8f8", fg = "#969555" })
hi(0, "FoldColumn", { link = "Normal" })
hi(0, "Folded", { bg = "#f8f8f8", fg = "#686868" })
hi(0, "Function", { fg = "#5a418a" })
hi(0, "GitSignsAdd", { bg = "#e0e0e0", fg = "#c2be4c" })
hi(0, "GitSignsAddInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsAddLn", { bg = "#dad9b3" })
hi(0, "GitSignsAddLnInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsAddNr", { bg = "#e0e0e0", fg = "#c2be4c" })
hi(0, "GitSignsAddPreview", { bg = "#dad9b3" })
hi(0, "GitSignsChange", { bg = "#e0e0e0", fg = "#e29a46" })
hi(0, "GitSignsChangeInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsChangeLn", { bg = "#e6d2bc" })
hi(0, "GitSignsChangeLnInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsChangeNr", { bg = "#e0e0e0", fg = "#e29a46" })
hi(0, "GitSignsChangedelete", { bg = "#e0e0e0", fg = "#e29a46" })
hi(0, "GitSignsChangedeleteLn", { bg = "#e6d2bc" })
hi(0, "GitSignsChangedeleteNr", { bg = "#e0e0e0", fg = "#e29a46" })
hi(0, "GitSignsCurrentLineBlame", { fg = "#a0a0a0" })
hi(0, "GitSignsDelete", { bg = "#e0e0e0", fg = "#fa8b91" })
hi(0, "GitSignsDeleteInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsDeleteLnInline", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsDeleteNr", { bg = "#e0e0e0", fg = "#fa8b91" })
hi(0, "GitSignsDeletePreview", { bg = "#edc9cd" })
hi(0, "GitSignsDeleteVirtLn", { bg = "#edc9cd" })
hi(0, "GitSignsDeleteVirtLnInLine", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "GitSignsStagedAdd", { bg = "#e0e0e0", fg = "#615f26" })
hi(0, "GitSignsStagedAddLn", { bg = "#dad9b3" })
hi(0, "GitSignsStagedAddNr", { bg = "#e0e0e0", fg = "#615f26" })
hi(0, "GitSignsStagedChange", { bg = "#e0e0e0", fg = "#714d23" })
hi(0, "GitSignsStagedChangeLn", { bg = "#e6d2bc" })
hi(0, "GitSignsStagedChangeNr", { bg = "#e0e0e0", fg = "#714d23" })
hi(0, "GitSignsStagedChangedelete", { bg = "#e0e0e0", fg = "#714d23" })
hi(0, "GitSignsStagedChangedeleteLn", { bg = "#e6d2bc" })
hi(0, "GitSignsStagedChangedeleteNr", { bg = "#e0e0e0", fg = "#714d23" })
hi(0, "GitSignsStagedDelete", { bg = "#e0e0e0", fg = "#7d4548" })
hi(0, "GitSignsStagedDeleteNr", { bg = "#e0e0e0", fg = "#7d4548" })
hi(0, "GitSignsStagedTopdelete", { bg = "#e0e0e0", fg = "#7d4548" })
hi(0, "GitSignsStagedTopdeleteNr", { bg = "#e0e0e0", fg = "#7d4548" })
hi(0, "GitSignsTopdelete", { bg = "#e0e0e0", fg = "#fa8b91" })
hi(0, "GitSignsTopdeleteNr", { bg = "#e0e0e0", fg = "#fa8b91" })
hi(0, "GitSignsUntracked", { bg = "#e0e0e0", fg = "#c2be4c" })
hi(0, "GitSignsUntrackedLn", { bg = "#dad9b3" })
hi(0, "GitSignsUntrackedNr", { bg = "#e0e0e0", fg = "#c2be4c" })
hi(0, "GitSignsVirtLnum", { bg = "#edc9cd" })
hi(0, "Identifier", { fg = "#1b1b1b" })
hi(0, "Ignore", { fg = "#a0a0a0" })
hi(0, "IncSearch", { bg = "#a16927", fg = "#e7e7e7" })
hi(0, "IndentBlanklineChar", { fg = "#d1d1d1" })
hi(0, "IndentBlanklineContextChar", { fg = "#a0a0a0" })
hi(0, "IndentBlanklineSpaceChar", { link = "Whitespace" })
hi(0, "Keyword", { fg = "#a16927" })
hi(0, "Label", { fg = "#b73242" })
hi(0, "LineNr", { bg = "#e0e0e0", fg = "#919191" })
hi(0, "LspCodeLens", { bg = "#f2f2f2" })
hi(0, "LspCodeLensSeparator", { fg = "#a0a0a0" })
hi(0, "LspInfoBorder", { fg = "#b73242" })
hi(0, "LspInfoFiletype", { fg = "#926f4e" })
hi(0, "LspInfoList", { fg = "#5a418a" })
hi(0, "LspInfoTip", { fg = "#969555", italic = true })
hi(0, "LspInfoTitle", { fg = "#a16927" })
hi(0, "LspReferenceRead", { link = "LspReferenceText" })
hi(0, "LspReferenceText", { bg = "#f8f8f8" })
hi(0, "LspReferenceWrite", { link = "LspReferenceText" })
hi(0, "LspSignatureActiveParameter", { bg = "#fefefe" })
hi(0, "MatchParen", { bg = "#fefefe", fg = "#b73242" })
hi(0, "ModeMsg", { fg = "#686868" })
hi(0, "MoreMsg", { fg = "#a16927" })
hi(0, "MsgArea", { link = "Normal" })
hi(0, "MsgSeparator", { link = "VertSplit" })
hi(0, "NonText", { link = "Conceal" })
hi(0, "Normal", { bg = "#e7e7e7", fg = "#1b1b1b" })
hi(0, "NormalFloat", { bg = "#f8f8f8" })
hi(0, "NvimTreeBookmark", { fg = "#63611e" })
hi(0, "NvimTreeEndOfBuffer", { bg = "#e0e0e0", fg = "#e7e7e7" })
hi(0, "NvimTreeExecFile", { bold = true, fg = "#63611e" })
hi(0, "NvimTreeFolderIcon", { fg = "#5a418a" })
hi(0, "NvimTreeGitDeleted", { fg = "#b73242" })
hi(0, "NvimTreeGitDirty", { fg = "#a16927" })
hi(0, "NvimTreeGitIgnored", { fg = "#a0a0a0" })
hi(0, "NvimTreeGitMerge", { fg = "#a2589a" })
hi(0, "NvimTreeGitNew", { fg = "#7f67b3" })
hi(0, "NvimTreeGitRenamed", { fg = "#a16927" })
hi(0, "NvimTreeGitStaged", { fg = "#7c7b3a" })
hi(0, "NvimTreeImageFile", { bold = true, fg = "#863e7f" })
hi(0, "NvimTreeIndentMarker", { fg = "#5a418a" })
hi(0, "NvimTreeLiveFilterPrefix", { bold = true, fg = "#863e7f" })
hi(0, "NvimTreeLiveFilterValue", { bold = true })
hi(0, "NvimTreeModifiedFile", { fg = "#63611e" })
hi(0, "NvimTreeNormal", { bg = "#e0e0e0", fg = "#414141" })
hi(0, "NvimTreeOpenedFile", { bold = true, fg = "#63611e" })
hi(0, "NvimTreePopup", { link = "NvimTreeNormal" })
hi(0, "NvimTreeRootFolder", { fg = "#e0e0e0" })
hi(0, "NvimTreeSpecialFile", { bold = true, fg = "#9c792a", underline = true })
hi(0, "NvimTreeSymlink", { bold = true, fg = "#5a418a" })
hi(0, "NvimTreeWinSeparator", { bg = "#e0e0e0", fg = "#d1d1d1" })
hi(0, "NvimTreeWindowPicker", { bg = "#4493c8", bold = true, fg = "#ededed" })
hi(0, "Operator", { fg = "#686868" })
hi(0, "Pmenu", { bg = "#fefefe", fg = "#919191" })
hi(0, "PmenuSbar", { bg = "#f8f8f8" })
hi(0, "PmenuSel", { bg = "#e0e0e0" })
hi(0, "PmenuThumb", { bg = "#a0a0a0" })
hi(0, "PreProc", { fg = "#5a418a" })
hi(0, "Question", { fg = "#a16927" })
hi(0, "QuickFixLine", { link = "Normal" })
hi(0, "Repeat", { fg = "#b73242" })
hi(0, "Search", { bg = "#fefefe", fg = "#1b1b1b" })
hi(0, "SignColumn", { link = "LineNr" })
hi(0, "Special", { fg = "#a16927" })
hi(0, "SpecialKey", { fg = "#a16927" })
hi(0, "SpellBad", { fg = "#b73242" })
hi(0, "SpellCap", { fg = "#a16927" })
hi(0, "SpellLocal", { fg = "#a16927" })
hi(0, "SpellRare", { fg = "#a16927" })
hi(0, "StartifyBracket", { fg = "#919191" })
hi(0, "StartifyNumber", { fg = "#1b1b1b" })
hi(0, "StartifyPath", { fg = "#5a418a" })
hi(0, "StartifySlash", { link = "StartifyPath" })
hi(0, "Statement", { fg = "#a16927" })
hi(0, "StatusLine", { bg = "#fefefe", fg = "#414141" })
hi(0, "StatusLineNC", { bg = "#f2f2f2", fg = "#919191" })
hi(0, "Stl366b8a_f2f2f2__", { bg = "#f2f2f2", fg = "#366b8a" })
hi(0, "Stl366b8a_fefefe__", { bg = "#fefefe", fg = "#366b8a" })
hi(0, "Stl414141_f2f2f2__", { bg = "#f2f2f2", fg = "#414141" })
hi(0, "Stl414141_fefefe__", { bg = "#fefefe", fg = "#414141" })
hi(0, "Stl919191_f2f2f2__", { bg = "#f2f2f2", fg = "#919191" })
hi(0, "Stlgrey_f2f2f2__", { bg = "#f2f2f2", fg = "#808080" })
hi(0, "Stlgrey_fefefe__", { bg = "#fefefe", fg = "#808080" })
hi(0, "String", { fg = "#9c792a" })
hi(0, "Substitute", { link = "IncSearch" })
hi(0, "TabLine", { bg = "#fefefe", fg = "#686868" })
hi(0, "TabLineFill", { link = "TabLine" })
hi(0, "TabLineSel", { bg = "#f2f2f2", fg = "#414141" })
hi(0, "TelescopeBorder", { fg = "#f2f2f2" })
hi(0, "TelescopeMatching", { fg = "#1b1b1b" })
hi(0, "TelescopeMultiIcon", { fg = "#1b1b1b" })
hi(0, "TelescopeMultiSelection", { fg = "#926f4e" })
hi(0, "TelescopeNormal", { bg = "#f2f2f2", fg = "#686868" })
hi(0, "TelescopePreviewBlock", { fg = "#863e7f" })
hi(0, "TelescopePreviewBorder", { bg = "#f2f2f2", fg = "#f2f2f2" })
hi(0, "TelescopePreviewCharDev", { fg = "#863e7f" })
hi(0, "TelescopePreviewDate", { fg = "#5a418a" })
hi(0, "TelescopePreviewDirectory", { fg = "#5a418a" })
hi(0, "TelescopePreviewExecute", { fg = "#9c792a" })
hi(0, "TelescopePreviewGroup", { fg = "#863e7f" })
hi(0, "TelescopePreviewHyphen", { fg = "#a0a0a0" })
hi(0, "TelescopePreviewLine", { bg = "#e0e0e0" })
hi(0, "TelescopePreviewLink", { fg = "#a16927" })
hi(0, "TelescopePreviewMatch", { bg = "#fefefe", fg = "#1b1b1b" })
hi(0, "TelescopePreviewMessage", { bg = "#f2f2f2" })
hi(0, "TelescopePreviewMessageFillchar", { bg = "#f2f2f2" })
hi(0, "TelescopePreviewNormal", { bg = "#f2f2f2" })
hi(0, "TelescopePreviewPipe", { fg = "#863e7f" })
hi(0, "TelescopePreviewRead", { fg = "#863e7f" })
hi(0, "TelescopePreviewSize", { fg = "#9c792a" })
hi(0, "TelescopePreviewSocket", { fg = "#a16927" })
hi(0, "TelescopePreviewSticky", { fg = "#a16927" })
hi(0, "TelescopePreviewTitle", { fg = "#686868" })
hi(0, "TelescopePreviewUser", { fg = "#863e7f" })
hi(0, "TelescopePreviewWrite", { fg = "#a16927" })
hi(0, "TelescopePromptBorder", { bg = "#f2f2f2", fg = "#f2f2f2" })
hi(0, "TelescopePromptCounter", { fg = "#919191" })
hi(0, "TelescopePromptNormal", { bg = "#f2f2f2" })
hi(0, "TelescopePromptPrefix", { fg = "#1b1b1b" })
hi(0, "TelescopePromptTitle", { bg = "#414141", fg = "#e7e7e7" })
hi(0, "TelescopeResultsBorder", { bg = "#f2f2f2", fg = "#f2f2f2" })
hi(0, "TelescopeResultsClass", { fg = "#5a418a" })
hi(0, "TelescopeResultsComment", { fg = "#969555", italic = true })
hi(0, "TelescopeResultsConstant", { fg = "#863e7f" })
hi(0, "TelescopeResultsDiffAdd", { bg = "#dad9b3" })
hi(0, "TelescopeResultsDiffChange", { bg = "#e6d2bc" })
hi(0, "TelescopeResultsDiffDelete", { bg = "#edc9cd" })
hi(0, "TelescopeResultsDiffUntracked", { fg = "#a0a0a0" })
hi(0, "TelescopeResultsField", { fg = "#5a418a" })
hi(0, "TelescopeResultsFunction", { fg = "#5a418a" })
hi(0, "TelescopeResultsIdentifier", { fg = "#1b1b1b" })
hi(0, "TelescopeResultsLineNr", { bg = "#e0e0e0", fg = "#919191" })
hi(0, "TelescopeResultsMethod", {})
hi(0, "TelescopeResultsNormal", { bg = "#f2f2f2", fg = "#686868" })
hi(0, "TelescopeResultsNumber", { fg = "#863e7f" })
hi(0, "TelescopeResultsOperator", { fg = "#686868" })
hi(0, "TelescopeResultsSpecialComment", { fg = "#a16927" })
hi(0, "TelescopeResultsStruct", {})
hi(0, "TelescopeResultsTitle", { bg = "#f2f2f2", fg = "#f2f2f2" })
hi(0, "TelescopeResultsVariable", { fg = "#a16927" })
hi(0, "TelescopeSelection", { bg = "#e0e0e0" })
hi(0, "TelescopeSelectionCaret", { fg = "#f2f2f2" })
hi(0, "TelescopeTitle", { fg = "#f2f2f2" })
hi(0, "TermCursor", { link = "Cursor" })
hi(0, "TermCursorNC", { bg = "#a0a0a0" })
hi(0, "Title", { fg = "#a16927" })
hi(0, "Todo", { bg = "#d2d1c4", fg = "#7c7b3a" })
hi(0, "Type", { fg = "#926f4e" })
hi(0, "Underlined", { fg = "#686868", underline = true })
hi(0, "VertSplit", { bg = "#e7e7e7", fg = "#a0a0a0" })
hi(0, "Visual", { bg = "#d1d1d1" })
hi(0, "VisualNOS", { bg = "#f8f8f8" })
hi(0, "WarningMsg", { fg = "#b73242" })
hi(0, "Whitespace", { fg = "#a0a0a0" })
hi(0, "WildMenu", { link = "PmenuSel" })
hi(0, "lCursor", { link = "Cursor" })

-- Terminal colors
local g = vim.g

g.terminal_color_0 = "#e7e7e7"
g.terminal_color_1 = "#b73242"
g.terminal_color_2 = "#63611e"
g.terminal_color_3 = "#9c792a"
g.terminal_color_4 = "#5a418a"
g.terminal_color_5 = "#863e7f"
g.terminal_color_6 = "#5a418a"
g.terminal_color_7 = "#919191"
g.terminal_color_8 = "#f2f2f2"
g.terminal_color_9 = "#e8606a"
g.terminal_color_10 = "#8b8a49"
g.terminal_color_11 = "#c8a357"
g.terminal_color_12 = "#826ab6"
g.terminal_color_13 = "#b267aa"
g.terminal_color_14 = "#826ab6"
g.terminal_color_15 = "#414141"
