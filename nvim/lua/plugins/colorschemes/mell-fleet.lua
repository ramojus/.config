local M = {}
local color = require("mellifluous.color")

function M.get_bg_dark()
    return color.new_from_hsl({ h = 70, s = 5, l = 14 })
end

function M.get_colors_dark(bg)



    local colors = {
        -- main_keywords = fg:darkened(20),
        main_keywords = orange,
        other_keywords = brown_accent,
        types = dark_cyan,
        operators = brown_accent,
        strings = dark_yellow,
        functions = blue,
        constants = dark_purple,
        comments = dark_green,

        fg = fg,
        bg = bg,

        red = red,
        orange = brown, -- warnings, changes, other (strange) spellings
        green = green, -- staged, additions
        blue = blue, -- information, new files
        purple = dark_purple, -- hints, merge
        yellow = yellow,
    }

    return colors
end

function M.get_ui_color_base_lightness()
    return 70
end

return M


