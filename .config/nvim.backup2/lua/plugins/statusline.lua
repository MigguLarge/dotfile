local extension = require('galaxyline.provider_extensions')
local colors = require('themes.onedark')

local gl = require('galaxyline')
local gls = gl.section

local mode_color = function()
  local mode_colors = {
    n = colors.green,
    i = colors.cyan,
    c = colors.red,
    V = colors.magenta,
    [''] = colors.magenta,
    v = colors.magenta,
    R = colors.red,
  }

  local color = mode_colors[vim.fn.mode()]

  if color == nil then
    color = colors.red
  end

  return color
end


gls.left[1] = {
    FirstElement = {
        provider = function()
            vim.api.nvim_command('hi GalaxyFirstElement guifg='..mode_color())
            return ''
        end,
        highlight = { colors.bg, colors.section_bg }
    }
}

gls.left[2]= {
    ViMode = {
    provider = function()
      local alias = {
        n = 'N',
        i = 'I',
        c = 'C',
        V = 'V',
        [''] = 'V',
        v = 'V',
        R = 'R',
      }
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color())
      local alias_mode = alias[vim.fn.mode()]
      if alias_mode == nil then
        alias_mode = vim.fn.mode()
      end
      return alias_mode..' '
    end,
    separator = " ",
    separator_highlight = { colors.yellow, colors.bg },
    highlight = { colors.bg, colors.bg },
  },
}

gls.left[3] = {
    FileIcon = {
        provider = 'FileIcon',
        condition = buffer_not_empty,
        highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg},
    }
}

gls.left[4] = {
    FileName = {
        provider = 'FileName',
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.bg},
        separator = " ",
        separator_highlight = {colors.bg, colors.section_bg},
    }
}

gls.right[1] = {
    LineColumn = {
        provider = 'LineColumn',
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.bg},
        separator = " ",
        separator_highlight = {colors.bg, colors.section_bg},
    }
}

gls.right[2] = {
    CurrentTime = {
        provider = function() return os.date('%H:%M') end,
        highlight = {colors.fg, colors.bg},
        separator = " | ",
        separator_highlight = {colors.yellow, colors.bg},
    }
}

gls.right[3] =  {
    LastElement = {
        provider = function() return '' end,
        highlight = {colors.bg, colors.section_bg}
    }
}
