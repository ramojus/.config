return {
	"ibhagwan/fzf-lua",
	-- dir = "~/dev/fzf-lua",
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	dependencies = { "echasnovski/mini.icons" },
	keys = function()
		return require("utils").get_lazy_keys_for("fzf-lua", {
			{
				"<leader>sf",
				function()
					require("fzf-lua").files()
				end,
				desc = "files",
			},
			-- { '<leader>sF', ':Telescope find_files cwd=~ hidden=1<cr>', desc = 'files from home' },
			-- { '<leader>sc', ':Telescope find_files cwd=~/.config<cr>', desc = 'files from .config' },
			{
				"<leader>sgr",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "grep in pwd",
			},
			{
				"<leader>sb",
				function()
					require("fzf-lua").buffers()
				end,
				desc = "buffers",
			},
			{
				"<leader>sh",
				function()
					require("fzf-lua").helptags()
				end,
				desc = "help tags",
			},
			{
				"<leader>sH",
				function()
					require("fzf-lua").highlights()
				end,
				desc = "highlights",
			},
			-- { '<leader>sp', require('telescope.builtin').planets, desc = 'planets' },
			{
				"<leader>sm",
				function()
					require("fzf-lua").manpages()
				end,
				desc = "man pages",
			},
			{
				"<leader>sr",
				function()
					require("fzf-lua").resume()
				end,
				desc = "resume last search",
			},
			{
				"<leader>sk",
				function()
					require("fzf-lua").keymaps()
				end,
				desc = "keymaps",
			},
			{
				"<leader>ss",
				function()
					require("fzf-lua").spell_suggest()
				end,
				desc = "spelling suggestions",
			},
			{
				"<leader>sg",
				function()
					require("fzf-lua").git_status()
				end,
				desc = "git changes",
			},
		})
	end,
	lazy = true,
	opts = {
		fzf_colors = {
			true,
			-- First existing highlight group will be used
			-- values in 3rd+ index will be passed raw
			-- i.e:  `--color fg+:#010101:bold:underline`
			-- ["fg+"] = { "fg" , { "Comment", "Normal" }, "bold", "underline" },
			-- It is also possible to pass raw values directly
			-- ["gutter"] = { "bg", { "NonExistingHighlight" } },
		},
	},
}
