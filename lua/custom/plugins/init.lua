-- Define a function to load Lua files from a directory
local function load_from_dir(dir)
  -- Use Vim's glob function to get all Lua files in the directory
  local files = vim.fn.globpath(vim.fn.stdpath 'config' .. '/lua/custom/plugins/' .. dir, '*.lua', false, true)
  for _, file in ipairs(files) do
    local module_name = 'custom.plugins.' .. dir .. '.' .. file:match '([^/]+)%.lua$'
    require(module_name)
  end
end

return {
  load_from_dir 'themes',
}
