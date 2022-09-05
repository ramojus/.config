-- inspired by: https://github.com/elianiva/dotfiles/blob/950ba38bda8230da8071fc72cf3d8617d6288565/config/nvim/lua/modules/statusline.lua

local fn = vim.fn
local api = vim.api

local Statusline = {}

-- possible values are 'arrow' | 'rounded' | 'blank'
local active_sep = 'blank'

-- change them if you want to different separatora
Statusline.separators = {
    arrow   = { ' ', ' ' },
    rounded = { ' ', ' ' },
    blank   = { '  ', '  ' },
}

-- highlight groups
Statusline.colors = {
    active       = '%#Statusline#',
    inactive     = '%#StatuslineNC#',
    explorer     = '%#Normal#',
    lsp          = '%#Normal#',
    line_col     = '%#NonText#',
    filename     = '%#Normal#',
    git          = '%#Normal#',
}

Statusline.bufferColors = {
    active       = '%#Normal#',
    explorer     = '%#Normal#',
    lsp          = '%#Normal#',
    line_col     = '%#NonText#',
    filename     = '%#Normal#',
    modified     = '%#Keyword#',
    git          = '%#Normal#',
}

Statusline.trunc_width = setmetatable({
    git_status = 30,
    filename = 30,
}, {
    __index = function()
        return 20
    end,
})

StatusLength = 0

function Statusline:is_truncated(width)
    local current_width = api.nvim_win_get_width(0)
    return current_width < width
end

function Statusline:get_current_mode()
    local current_mode = api.nvim_get_mode().mode
    return string.format(' %s ', self.modes[current_mode]):upper()
end

function Statusline:get_git_status()
    -- use fallback because it doesn't set this variable on the initial `BufEnter`
    local signs = vim.b.gitsigns_status_dict
    or { head = '', added = 0, changed = 0, removed = 0 }
    local is_head_empty = signs.head ~= ''

    if self:is_truncated(self.trunc_width.git_status) then
        return is_head_empty and string.format('  %s ', signs.head or nil) or nil
    end

    return is_head_empty and string.format(
    ' +%s ~%s -%s |  %s ',
    signs.added, signs.changed, signs.removed, signs.head
    ) or nil
end

function Statusline:get_filepath()
    local filepath = fn.fnamemodify(fn.expand '%', ':.:h')
    if filepath == '' or filepath == '.'
        or self:is_truncated(self.trunc_width.filename) then
        return ' '
    end

    return string.format(' %%<%s/', filepath)
end

function Statusline:get_filename()
    local filename = fn.expand '%:t'
    if filename == '' then
        return ''
    end
    return filename
end

function Statusline:get_icon(isColored)
    local file_name, file_ext = fn.expand '%:t', fn.expand '%:e'
    local icon = require('nvim-web-devicons').get_icon( file_name, file_ext, { default = true })
    local color = (file_ext and '%#DevIcon' .. file_ext .. '#' or '')
    if isColored then
        return color .. icon
    end
    return icon
end

function Statusline:get_line_col()
    return '%l,%c'
end

function Statusline:get_lsp_progress()
    local lsp = vim.lsp.util.get_progress_messages()[1]
    if lsp then
        local name = lsp.name or ''
        local msg = lsp.message or ''
        local percentage = lsp.percentage or 0
        local title = lsp.title or ''
        return string.format(' %%<%s: %s %s (%s%%%%) ', name, title, msg, percentage)
    end

    return nil
end

function Statusline:get_lsp_status(isColored)
    if self:is_truncated(self.trunc_width.diagnostic) then
        return nil
    end
    if vim.tbl_isempty(vim.lsp.buf_get_clients(0)) then
        return ''
    end

    local loading_progress = self:get_lsp_progress()
    if loading_progress then
        return loading_progress
    end

    local types = {
        errors = 'Error',
        warnings = 'Waring',
        info = 'Information',
        hints = 'Hint'
    }
    local icons = { -- order mater
        errors = '',
        warnings = '',
        info = '',
        hints = ''
    }
    local ok_icon = ''
    -- local ok_icon = ''

    local typeStatus = {
        [types.errors] = #vim.diagnostic.get(0, {severity = vim.diagnostic.severity.ERROR}),
        [types.warnings] = #vim.diagnostic.get(0, {severity = vim.diagnostic.severity.WARN}),
        [types.info] = #vim.diagnostic.get(0, {severity = vim.diagnostic.severity.INFO}),
        [types.hints] = #vim.diagnostic.get(0, {severity = vim.diagnostic.severity.HINT}),
    }
    local status = ''
    for k, type in pairs(types) do
        -- local typeStatus = vim.lsp.diagnostic.get_count(0, type)
        -- FIX: jfkdslfjds
        if typeStatus[type] ~= 0 then
            if status ~= '' then
                status = status .. '  '
            end
            if isColored then
                local colored_icon = '%#LspDiagnosticsSign' .. type .. '#' .. icons[k] .. self.colors.lsp
                status = status .. colored_icon .. ' ' .. typeStatus[type]
                Statusline
            else
                status = status .. icons[k] .. ' ' .. typeStatus[type]
            end
        end
    end
    return (status == '' and ok_icon or status)
end

function Statusline:get_modified_status(color)
    local modified_status = ''
    if vim.bo.modified then
        modified_status = color .. ""
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        modified_status = ""
    end

    return modified_status
end

function Statusline:add_separators(statusline_items)
    for i = 1, #statusline_items do
        if (not statusline_items[i]) or statusline_items[i] == '' then
            table.remove(statusline_items, i)
        end
    end

    local separator = self.separators[active_sep][1]
    local statusline = ''
    for i = 1, #statusline_items - 1 do
        statusline = statusline .. statusline_items[i] .. separator
    end
    if next(statusline_items) then -- not empty
        statusline = statusline .. statusline_items[#statusline_items]
    end

    return statusline .. ''
end

function Statusline:set_active()
    local colors = self.colors

    local gitstatus = self:get_git_status()
    local git = (gitstatus and colors.git .. gitstatus or nil)
    local filename = self:get_icon(true) .. ' ' .. colors.filename .. self:get_filename()
    local line_col = colors.line_col .. self:get_line_col()
    local lspstatus = self:get_lsp_status(true)
    local lsp = (lspstatus and colors.lsp .. lspstatus or nil)
    local modified = self:get_modified_status(colors)
    local padding = "%="
    local statusline_items = {
        lsp,
        git,
        padding,
        filename,
        modified,
        padding,
        line_col,
    }
    local statusline = self:add_separators(statusline_items)
    -- statuslength = string.len(statusline) + 20
    return colors.active .. statusline
end

function Statusline:set_ruler()
    local colors = self.bufferColors

    local gitstatus = self:get_git_status()
    local git = (gitstatus and colors.git .. gitstatus or nil)
    local filename = self:get_icon(true) .. ' ' .. colors.filename .. self:get_filename()
    local line_col = colors.line_col .. self:get_line_col()
    local lspstatus = self:get_lsp_status(true)
    local lsp = (lspstatus and colors.lsp .. lspstatus .. ' ' or nil)
    local modified = self:get_modified_status(colors.modified)
    local padding = "%="
    local statusline_items = {
        padding,
        line_col,
        padding,
        lsp,
        git,
        filename,
        modified,
    }
    local statusline = self:add_separators(statusline_items)
    -- statuslength = string.len(statusline) + 20
    return colors.active .. statusline
end

function Statusline:set_inactive()
    return self.colors.inactive .. "%= %F %="
end

function Statusline:set_explorer()
    local title = self.colors.active .. "   "

    return self.colors.active .. title
end

Status = setmetatable(Statusline, {
    __call = function(self, mode)
        return self['set_' .. mode](self)
    end,
})

vim.opt.rulerformat="%50(%{%v:lua.Status('ruler')%}%)"

-- TODO: replace this once we can define autocmd using lua
vim.cmd [[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Status('active')
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Status('inactive')
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Status('explorer')
  augroup END
]]

