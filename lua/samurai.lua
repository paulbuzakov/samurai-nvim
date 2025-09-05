local util = require("samurai.util")
local colours = require("samurai.colours")
local highlights = require("samurai.highlights")

local M = {}

M.config = {
  transparent_background_level = 0,
  italics = false,
  disable_italic_comments = false,
  sign_column_background = "none",
  ui_contrast = "low",
  dim_inactive_windows = false,
  diagnostic_text_highlight = false,
  diagnostic_virtual_text = "coloured",
  diagnostic_line_highlight = false,
  spell_foreground = false,
  show_eob = true,
  float_style = "bright",
  inlay_hints_background = "none",
  on_highlights = function(highlight_groups, palette) end,
  colours_override = function(palette) end,
}

M.setup = function(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

M.load = function()
  local palette = colours.generate_palette(M.config, vim.o.background)
  local generated_syntax = highlights.generate_syntax(palette, M.config)

  util.load(generated_syntax)
end

M.colorscheme = M.load

return M