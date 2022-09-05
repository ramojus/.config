vim.cmd [[set background=dark]]
vim.g.theme_name = "night-owl"
-- require("config.theme.catppuccin")
-- vim.cmd [[colorscheme mountain]]
-- require('base16-colorscheme').setup({
--     base00 = '#141414', base01 = '#1a1a1a', base02 = '#1a1a1a', base03 = '#555555',
--     base04 = '#555555', base05 = '#b0b0b0', base06 = '#f0f0f0', base07 = '#c5c5c5',
--     base08 = '#c4c19e', base09 = '#a9862c', base0A = '#af8aab', base0B = '#678c58',
--     base0C = '#86abac', base0D = '#8a8fab', base0E = '#b0b0b0', base0F = '#e5e5e5'
--  })


-- require('base16-colorscheme').setup({
--     base00 = "#151515", base01 = "#1f1f1f", base02 = "#282828", base03 = "#3b3b3b",
--     base04 = "#e8e3e3", base05 = "#e8e3e3", base06 = "#e8e3e3", base07 = "#e8e3e3",
--     base08 = "#b66467", base09 = "#d9bc8c", base0A = "#d9bc8c", base0B = "#8c977d",
--     base0C = "#8aa6a2", base0D = "#8da3b9", base0E = "#a988b0", base0F = "#e8e3e3"
-- })

-- local paradise_dark = base16.theme_from_array {
--     "151515"; "1f1f1f"; "282828"; "3b3b3b";
--     "e8e3e3"; "e8e3e3"; "e8e3e3"; "e8e3e3";
--     "b66467"; "d9bc8c"; "d9bc8c"; "8c977d";
--     "8aa6a2"; "8da3b9"; "a988b0"; "e8e3e3";
-- }

local base16 = require('base16')
base16(base16.themes(vim.g.theme_name), true)
