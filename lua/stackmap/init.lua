local M = {}

M.findFile = function(filename)
  local path = vim.api.nvim_get_runtime_file(filename, false)
  if path[1] == nil then
    return nil
  end

  return path[1]
end

return M
