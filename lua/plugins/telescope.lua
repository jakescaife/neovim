return {
  {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()

	  local builtin = require("telescope.builtin")
	  vim.keymap.set("n", "<leader>ff", builtin.find_files)
	  vim.keymap.set("n", "<leader>fs", builtin.live_grep)
	  vim.keymap.set("n", "<leader>fb", builtin.buffers)
	  vim.keymap.set("n", "<leader>fg", builtin.git_files)

	  local telescope = require("telescope")
	  local actions = require("telescope.actions")
	  telescope.setup({
		defaults = {
		  layout_strategy = "vertical",
		  layout_config = {
			vertical = {
			  preview_height = 0.5,
			  results_width = 0.8,
			},
		  },
		  mappings = {
			n = {
			  ["<leader>d"] = actions.delete_buffer,
			}
		  },
		  prompt_position = "top",
		},
	  })

	end,
  },
  {
	"nvim-telescope/telescope-ui-select.nvim",
	config = function()
	  local telescope = require("telescope")
	  telescope.setup({
		extensions = {
		  ["ui-select"] = {
			require("telescope.themes").get_dropdown(),
		  },
		},
	  })
	  telescope.load_extension("ui-select")
	end,
  },
}
