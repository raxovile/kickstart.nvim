local dap = require 'dap'
dap.adapters.coreclr = {
  type = 'executable',
  command = '/path/to/netcoredbg',
  args = { '--interpreter=vscode' },
}
dap.configurations.cs = {
  {
    type = 'coreclr',
    name = 'launch - netcoredbg',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net6.0/MyFunctionApp.dll', 'file')
    end,
  },
}
