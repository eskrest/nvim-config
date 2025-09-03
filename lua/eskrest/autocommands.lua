-- fix for sass files indentation
vim.api.nvim_create_autocmd("FileType", {
	pattern = "sass",
	callback = function()
		vim.opt.shiftwidth = 4
	end,
})

-- react fix
-- DOESN'T WORK
-- vim.api.nvim_create_autocmd('FileType', {
--     pattern = "javascriptreact",
--     callback = function()
--         vim.treesitter.start()
--         vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
--     end,
-- })

-- vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
-- 	pattern = '*.tsx',
-- 	callback = function()
-- 		vim.opt.filetype = 'typescriptreact'
-- 	end
-- })
