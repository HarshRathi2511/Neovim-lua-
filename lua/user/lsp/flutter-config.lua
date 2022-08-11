local status_ok,flutter = pcall(require,"flutter-tools")
if not status_ok then
  return
end

flutter.setup{
    debugger = {
      enabled = true,
      run_via_dap = false, --use dap instead of plenary ,change to false if any performance issues 
    },
    outline = { auto_open = false },
    decorations = {
      statusline = { device = true, app_version = true },
    },
    widget_guides = { enabled = true, debug = true },
    dev_log = { enabled = true, open_cmd = "tabedit" },
    lsp = {
      color = {
        enabled = true,
        background = true,
        virtual_text = false,
      },
      settings = {
        showTodos = true,
        renameFilesWithClasses = "prompt",
        enableSnippets = true,
      },
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities,
    },
}

