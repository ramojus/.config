local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
-- M.init = function(theme)
--    -- set the global theme, used at various places like theme switcher, highlights
--    vim.g.theme_name = theme
--
--    local present, base16 = pcall(require, "base16")
--
--    if present then
--       -- first load the base16 theme
--       base16(base16.themes(theme), true)
--
--       -- unload to force reload
--       package.loaded["config.colors.highlights" or false] = nil
--       -- then load the highlights
--       require "config.colors.highlights"
--    end
-- end

function M.init(theme)
    -- vim.g.theme_name = theme
    -- vim.cmd("colorscheme flow_moody")
    -- vim.cmd("colorscheme " .. theme)
    -- require 'config.colors.themer'
    -- require 'config.colors.themer-highlights'
end

M.get = function(theme)
    if not theme then
        theme = vim.g.theme_name
    end
    return require('hl_themes.' .. theme)
end

return M

