local neorg = require'neorg'

-- This sets the leader for all Neorg keybinds. It is separate from the regular <Leader>,
-- And allows you to shove every Neorg keybind under one "umbrella".
local neorg_leader = "<Leader>o" -- for "organization"

-- Require the user callbacks module, which allows us to tap into the core of Neorg
local neorg_callbacks = require('neorg.callbacks')

-- Listen for the enable_keybinds event, which signals a "ready" state meaning we can bind keys.
-- This hook will be called several times, e.g. whenever the Neorg Mode changes or an event that
-- needs to reevaluate all the bound keys is invoked
neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)

	-- Map all the below keybinds only when the "norg" mode is active
	keybinds.map_event_to_mode("norg", {
		n = { -- Bind keys in normal mode

			-- Keys for managing TODO items and setting their states
			{ "gtd", "core.norg.qol.todo_items.todo.task_done" },
			{ "gtu", "core.norg.qol.todo_items.todo.task_undone" },
			{ "gtp", "core.norg.qol.todo_items.todo.task_pending" },
			{ "<C-Space>", "core.norg.qol.todo_items.todo.task_cycle" }

		},
	}, { silent = true, noremap = true })

end)

neorg.setup({
    load = {
        ["core.defaults"] = {}, -- Load all the default modules
        ["core.norg.concealer"] = {}, -- Allows for use of icons
        ["core.norg.dirman"] = { -- Manage your directories with Neorg
            config = {
                workspaces = {
                    my_workspace = "~/Notes/neorg/",
                    studijos = "~/Notes/neorg/studijos/",
                    diary = "~/Notes/neorg/diary"
                }
            }
        },
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp"
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "~/Notes/neorg/inbox.norg",
                default_lists = {
                    inbox = "~/Notes/neorg/inbox.norg",
                },
                exclude = {"~/Notes/neorg/diary/", "~/Notes/neorg/studijos/", "Notes/neorg/index.norg"}
            }
        },
        ["core.integrations.treesitter"] = {
            config = {
                highlights = {
                }
            }
        },
    },
})

