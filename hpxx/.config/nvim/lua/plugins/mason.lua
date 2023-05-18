return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		event = "InsertEnter",
		enabled = true,
        keys = {
            {"<leader>m", "<cmd>Mason<cr>", desc = "open mason"},
        },
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
}
