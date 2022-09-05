require("notify").setup({
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "default",

  -- Default timeout for notifications
  timeout = 4000,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
  background_colour = "Normal",

  -- Minimum width for notification windows
  minimum_width = 32,

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})

Add_highlight([[hi! NotifyERRORBorder guifg=#8A1F1F]])
Add_highlight([[hi! NotifyWARNBorder guifg=#79491D]])
Add_highlight([[hi! NotifyINFOBorder guifg=#4F6752]])
Add_highlight([[hi! NotifyDEBUGBorder guifg=#8B8B8B]])
Add_highlight([[hi! NotifyTRACEBorder guifg=#4F3552]])
Add_highlight([[hi! NotifyERRORIcon guifg=#F70067]])
Add_highlight([[hi! NotifyWARNIcon guifg=#F79000]])
Add_highlight([[hi! link NotifyINFOIcon String]])
Add_highlight([[hi! NotifyDEBUGIcon guifg=#8B8B8B]])
Add_highlight([[hi! NotifyTRACEIcon guifg=#D484FF]])
Add_highlight([[hi! NotifyERRORTitle  guifg=#F70067]])
Add_highlight([[hi! NotifyWARNTitle guifg=#F79000]])
Add_highlight([[hi! link NotifyINFOTitle String]])
Add_highlight([[hi! NotifyDEBUGTitle  guifg=#8B8B8B]])
Add_highlight([[hi! NotifyTRACETitle  guifg=#D484FF]])

