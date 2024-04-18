local M = {}

M.find_file = function(name, directory)
	local pfile = io.popen('find "' .. directory .. '" -type f')
	if not pfile then
		print("Error: Could not find file")
		return
	end
	for filename in pfile:lines() do
		if filename:match(name) then
			print("Found: " .. filename)
			return filename
		end
	end
	pfile:close()
end
return M
