return {
  "ziglang/zig.vim",
  ft = "zig",
  config = function()
    vim.g.zig_fmt_autosave = 1
    vim.g.zig_fmt_command = "zig fmt"
  end,
}
