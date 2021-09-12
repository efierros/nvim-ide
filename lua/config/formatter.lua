-- Prettier function for formatter
local prettier = function()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
    stdin = true
  }
end

  require("formatter").setup({
  logging = false,
  filetype = {
    javascript = { prettier },
	  html = { prettier },
    css = { prettier },
    scss = { prettier },
    less = { prettier }
	-- blade = {
	--   function()
	-- 	return {
	-- 	  exe = "blade-formatter",
	-- 	  args = {"--indent-size=2", "--wrap=90", "--wrap-attributes=force-aligned", vim.api.nvim_buf_get_name(0)},
	-- 	  stdin = true
	-- 	}
	--   end
	-- }
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.css,*.less,*.scss,*.html FormatWrite
augroup END
]], true)
