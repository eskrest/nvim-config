local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
    lazy = false,
	build = ":TSUpdate",
	branch = "main",

}

function M.config()
	local loaded, treesitter = pcall(require, "nvim-treesitter.configs")

	if not loaded then
		return
	end

    -- You do not need to call setup for nvim-treesitter to work using default values.
	-- treesitter.setup({
	-- 	ensure_installed = { "html", "lua", "php", "javascript", "typescript", "vue", "tsx" },
	-- 	sync_install = false,
	-- 	auto_install = true,
	-- 	highlight = {
	-- 		enable = true,
	-- 		additional_vim_regex_highlighting = false,
	-- 	},
	-- 	indent = {
	-- 		enable = true,
	-- 	},
	-- })

    -- This is a no-op if the parsers are already installed.
    -- treesitter.install { "html", "lua", "php", "javascript", "typescript", "vue", "tsx" }

    -- Treesitter highlighting is provided by Neovim, see :h treesitter-highlight.
    -- To enable it for a filetype, put vim.treesitter.start() in a ftplugin/<filetype>.lua
    -- in your config directory, or place the following in your init.lua:
    -- vim.api.nvim_create_autocmd('FileType', {
    --     pattern = { '<filetype>' },
    --     callback = function() vim.treesitter.start() end,
    -- })

    -- Treesitter-based folding is provided by Neovim. To enable it, put the following in your ftplugin or FileType autocommand:
    -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

    -- Treesitter-based indentation is provided by this plugin
    -- but considered experimental. To enable it, put the following
    -- in your ftplugin or FileType autocommand:
    -- vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
end

return M
