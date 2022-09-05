local formatTab = require'luatab'.formatTab
Tabline = function()
    local i = 1
    local line = ''
    while i <= vim.fn.tabpagenr('$') do
        line = line .. ' ' .. formatTab(i)
        i = i + 1
    end
    return  "%=%T%#TabLineFill#" .. line .. '%='
end
vim.o.tabline = '%!v:lua.Tabline()'

