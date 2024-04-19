local M = {}

vim.o.shell = "powershell"
vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.o.shellquote = ""
vim.o.shellxquote = ""

local config = {
	source_path = "~/foo",
	output_path = "./bar",
}

M.deploy_teledis = function()
	local ps_command = string.format(
		'Copy-Item -Path  "%s\\*" -Destination "%s" -Recurse -Force',
		config.source_path,
		config.output_path
	)
	local result = vim.fn.system(ps_command)
	if vim.v.shell_error ~= 0 then
		print("Erreur lors de la copie des fichiers: " .. result)
	else
		print("Deploiement reussi.")
	end
end

return M
