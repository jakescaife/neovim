vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

local terminal_buffer = nil;

vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()

  if not terminal_buffer or not vim.api.nvim_buf_is_valid(terminal_buffer) then
    vim.cmd.term();
    terminal_buffer = vim.fn.bufnr("%")
  end

  vim.cmd("buffer" .. terminal_buffer)
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
end)
