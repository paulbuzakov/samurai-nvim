local M = {}

local base_palette = {
    fg = "#b4b8bc",
    red = "#b35a5a",
    orange = "#bba770",
    yellow = "#bba770",
    green = "#7e9282",
    aqua = "#6b8f8d",
    blue = "#5f768d",
    purple = "#786c85",
    grey0 = "#7a8478",
    grey1 = "#859289",
    grey2 = "#9da9a0",
    statusline1 = "#7e9282",
    statusline2 = "#b4b8bc",
    statusline3 = "#b35a5a",
    none = "NONE",
}

M.generate_palette = function(options)
  local combined_palette = vim.tbl_extend("force", base_palette, base_palette)
  options.colours_override(combined_palette)

  return combined_palette
end

return M
