require("true-zen").setup {
    modes = {
        minimalist = {
            ignored_buf_types = { "nofile" }, -- save current options from any window except ones displaying these kinds of buffers
            options = { -- options to be disabled when entering Minimalist mode
                number = true,
                relativenumber = true,
                showtabline = 0,
                signcolumn = "yes",
                statusline = "no",
                cmdheight = 1,
                laststatus = 3,
                showcmd = true,
                showmode = false,
                ruler = false,
                numberwidth = 1
            },
            callbacks = { -- run functions when opening/closing Minimalist mode
                open_pre = nil,
                open_pos = nil,
                close_pre = nil,
                close_pos = nil
            },
        },
    }
}
