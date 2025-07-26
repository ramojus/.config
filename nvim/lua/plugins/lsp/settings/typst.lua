return {
    root_dir = function() return vim.fn.getcwd() end,
    settings = {
        exportPdf = "onType",
        -- outputPath = "$name",
    }


    -- root_dir = require("core").file.root_path,
    -- settings = { -- not tinymist
    --     exportPdf = "never" -- Choose onType, onSave or never.
    -- }
}
