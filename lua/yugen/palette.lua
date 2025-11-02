local variants = {
  main = {
    placeholder = '#FFFF00',
    color100 = '#FAFAFA',
    color200 = '#D4D4D4',
    color300 = '#A9A9A9',
    color400 = '#696969',
    color500 = '#505050',
    color600 = '#303030',
    color700 = '#151515',
    color800 = '#000000',
    primary = '#FFBE89',
    success = '#7EAB8E',
    warning = '#FFF2AF',
    error = '#F57A7A',
    none = 'none'
  },
}

local palette = {}

function palette.setup(config)
  local colors = config.colors or {}
  local base_palette = variants.main
  
  local custom_palette = vim.tbl_extend("force", base_palette, {
    primary = colors.primary or base_palette.primary,
    success = colors.success or base_palette.success,
    warning = colors.warning or base_palette.warning,
    error = colors.error or base_palette.error,
  })
  
  return custom_palette
end

palette = variants.main

return palette
