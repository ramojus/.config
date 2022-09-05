local g = vim.g
local add_highlight = require'config.utils'.add_highlight

g["gruvbox_contrast_dark"] = 'hard'
g["gruvbox_guisp_fallback"] = 'bg'

g["gruvbox_material_background"] = 'hard'
g["gruvbox_material_enable_italic"] = 1
g["gruvbox_material_transparent_background"] = 0

g["miramare_enable_italic"] = 1
g["miramare_disable_italic_comment"] = 1
g["miramare_transparent_background"] = 0

g["onedark_hide_endofbuffer"] = 1
g["onedark_terminal_italics"] = 1

g["neodark#use_256color"] = 1

g["material_style"] = 'deep ocean'

g["edge_enable_italic"] = 0
g["edge_style"] = 'aura'

-- amora
-- g["mode"] = 'mirtilo'

g["sonokai_style"] = 'espresso'
g["sonokai_enable_italic"] = 1
g["sonokai_transparent_background"] = 1

g["tokyonight_style"] = 'night'

g["pencil_higher_contrast_ui"] = 0
g["pencil_neutral_headings"] = 0

vim.g.neon_style = "doom"

vim.g.alduin_Shout_Dragon_Aspect = 1
vim.g.sierra_Midnight = 1
vim.g.arcadia_Midnight = 1

vim.g.vscode_style = "dark"

vim.g.indent_blankline_max_indent_increase = 1
vim.g.indent_blankline_show_first_indent_level = false
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.g.substrata_variant = "brighter"

require("config.theme.theme")

-- Add_highlight([[hi LineNr guibg=NONE ctermbg=NONE]])
-- Add_highlight([[hi CursorLineNr guibg=NONE ctermbg=NONE]])
-- Add_highlight([[hi signcolumn guibg=NONE ctermbg=NONE]])
add_highlight([[hi VertSplit guibg=NONE]])
add_highlight([[hi EndOfBuffer guifg=background ctermbg=black]])
-- Add_highlight([[hi Normal guibg=NONE ctermbg=NONE]])

-- INFO: my custom theme settings here
-- Add_highlight([[hi! def link VertSplit LineNr]])
-- Add_highlight([[hi IndentBlanklineChar cterm=nocombine ctermfg=12 gui=nocombine guifg=#292929 ]])
add_highlight([[hi clear SpellBad]])
add_highlight([[hi SpellBad gui=underline guifg=orange]])

add_highlight([[hi link Scrollview Search]])

-- Add_highlight([[hi! link CmpItemAbbrMatchFuzzy Identifier]])
-- Add_highlight([[hi! link CmpItemKindText Normal]]          )
-- Add_highlight([[hi! link CmpItemKindMethod Function]]      )
-- Add_highlight([[hi! link CmpItemKindFunction Function]]    )
-- Add_highlight([[hi! link CmpItemKindConstructor Define]]   )
-- Add_highlight([[hi! link CmpItemKindField Identifier]]     )
-- Add_highlight([[hi! link CmpItemKindVariable Identifier]]  )
-- Add_highlight([[hi! link CmpItemKindClass Define]]         )
-- Add_highlight([[hi! link CmpItemKindInterface Define]]     )
-- Add_highlight([[hi! link CmpItemKindValue Constant]]       )
-- Add_highlight([[hi! link CmpItemKindKeyword Keyword]]      )
-- Add_highlight([[hi! link CmpItemKindSnippet Character]]    )
-- Add_highlight([[hi! link CmpItemKindFile Constant]]        )
-- Add_highlight([[hi! link CmpItemKindFolder Constant]]      )

-- No amora italics
-- cmd [[hi AmoraPurpleItalic cterm=NONE gui=NONE]]
-- cmd [[hi AmoraCyanItalic cterm=NONE gui=NONE]]
-- cmd [[hi AmoraRedItalic    cterm=NONE gui=NONE]]

-- italic comments
-- cmd [[let &t_ZH = "\e[3m"]]
-- cmd [[let &t_ZR = "\e[23m"]]
-- Add_highlight([[highlight Comment cterm=italic]])
-- cmd [[highlight Comment gui=italic]]

