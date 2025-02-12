return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
			},
			view = {
				width = 50,
				side = "right",
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
			filters = {
				dotfiles = false,
			},
		})

		vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", {})
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", {})
	end,
}
