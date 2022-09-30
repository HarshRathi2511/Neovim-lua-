local status_ok, _ = pcall(vim.cmd, "set rnu" )
if not status_ok then
  vim.notify("@harshrathi relative line numbers could not be set")
	return
end

