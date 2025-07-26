return {
    "mfussenegger/nvim-dap",

    dependencies = {
        { "stevearc/overseer.nvim", config = true },
        {
            dir = "~/dev/nvim-dap-ui/"
            -- "carriga/nvim-dap-ui"
        },
    },

    config = function()
        -- for _, group in pairs({
        --     "DapBreakpoint",
        --     "DapBreakpointCondition",
        --     "DapBreakpointRejected",
        --     "DapLogPoint",
        -- }) do
        --     -- vim.fn.sign_define(group, { text = "●", texthl = group }) TODO
        --     vim.fn.sign_define(group, { text = "", texthl = "SignColumn" })
        -- end

        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
          dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
          dapui.close()
        end

        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
                command = "codelldb",
                args = {"--port", "${port}"},
                -- On windows you may have to uncomment this:
                -- detached = false,
            }
        }
        dap.configurations.cpp = {
            {
                name = "Launch file",
                type = "codelldb",
                request = "launch",
                program = "${fileBasenameNoExtension}",
                -- program = function()
                --     return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                -- end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
            },
        }
    end,

    keys = function()
        return require('utils').get_lazy_keys_for('dap', {
            -- e for Examine or Execution
            {
                "<leader>ebl",
                function() require("dap").list_breakpoints() end,
                desc = "list breakpoints",
            },
            {
                "<leader>es",
                function()
                    local widgets = require("dap.ui.widgets")
                    widgets.centered_float(widgets.scopes, {})
                end,
                desc = "show scopes",
            },
            { "<leader>ed", "<CMD>DapDisconnect<CR>", desc = "disconnect" },
            { "<leader>eS", "<CMD>DapTerminate<CR>", desc = "terminate" },
            { "<leader>erl", function() require("dap").run_last() end, desc = "run last" },
            { "<C-S-K>", function() require("dap.ui.widgets").hover(nil, {}) end },

            { "<F5>", "<CMD>DapContinue<CR>", desc = "continue" },
            { "<leader>er", "<CMD>DapContinue<CR>", desc = "continue" },

            { "<F6>", function() require("dap").run_to_cursor() end, desc = "run to cursor" },
            { "<leader>erc", function() require("dap").run_to_cursor() end, desc = "run to cursor" },

            { "<F9>", "<CMD>DapToggleBreakpoint<CR>", desc = "toggle breakpoint" },
            { "<leader>et", "<CMD>DapToggleBreakpoint<CR>", desc = "toggle breakpoint" },
            {
                "<leader>ebc",
                function()
                    vim.ui.input(
                        { prompt = "Breakpoint condition: " },
                        function(input) require("dap").set_breakpoint(input) end
                    )
                end,
                desc = "conditional breakpoint",
            },

            { "<F10>", function() require("dap").step_over() end, desc = "step over" },
            { "<leader>en", function() require("dap").step_over() end, desc = "step over" },

            { "<F11>", function() require("dap").step_into() end, desc = "step into" },
            { "<leader>ei", function() require("dap").step_into() end, desc = "step into" },

            { "<F23>", function() require("dap").step_out() end, desc = "step out" }, -- shift + f11
            { "<leader>eo", function() require("dap").step_out() end, desc = "step out" },
        })
    end,
}
