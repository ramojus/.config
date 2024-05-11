return {
    'rcarriga/nvim-notify',
    lazy = false,
    setup = function()
        require("notify")("My super important message")
        vim.notify = require("notify")
    end,
    cmd = "Notifications",
}
