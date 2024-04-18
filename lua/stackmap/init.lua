local M = {}

M.findFile = function(filename)
	local path = vim.api.nvim_get_runtime_file(filename, true)
	if path[1] == nil then
		return nil
	end

	print("Found file: " .. path[1])
	return path[1]
end

return M
