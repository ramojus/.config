local M = {}
local color = require("mellifluous.color")

function M.get_bg_dark()
    return color.new_from_hsl({ h = 70, s = 0, l = 14 })
end

function M.get_colors_dark(bg)
    -- local fg = color.new_from_hsl({ h = 70, s = 30, l = 90 })
    local fg = color.new_from_hsl({ h = 70, s = 10, l = 80 })

    local purple = color.new_from_hsl({ h = 290, s = 30, l = 65 })
    local cyan = color.new_from_hsl({ h = 220, s = 30, l = 65 })
    local blue = color.new_from_hsl({ h = 270, s = 10, l = 70 })

    local green = color.new_from_hsl({ h = 104, s = 40, l = 65 })
    local dark_green = color.new_from_hsl({ h = 104, s = 53, l = 45 })

    local dark_yellow = color.new_from_hsl({ h = 90, s = 40, l = 65 })

    local brown = color.new_from_hsl({ h = 62, s = 40, l = 65 })
    local brown_accent = color.new_from_hsl({ h = 62, s = 15, l = 70 })

    local redish = color.new_from_hsl({ h = 54, s = 40, l = 60 })

    local red = color.new_from_hsl({ h = 40, s = 50, l = 65 })

    local colors = {
        main_keywords = redish,
        other_keywords = brown_accent,
        types = cyan,
        operators = brown_accent,
        strings = dark_yellow,
        functions = blue,
        constants = purple,
        comments = dark_green,

        fg = fg,
        bg = bg,

        red = red,
        orange = brown, -- warnings, changes, other (strange) spellings
        green = green, -- staged, additions
        blue = blue, -- information, new files
        purple = purple, -- hints, merge
        yellow = dark_yellow,
    }

    return colors
end

function M.get_ui_color_base_lightness()
    return 60
end

return M

