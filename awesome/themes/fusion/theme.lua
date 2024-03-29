--------------------------
-- Fusion awesome theme --
--------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local bg_normal = "#222222"
local bg_focus = "#535d6c"
local fg_normal = "#aaaaaa"
local fg_focus = "#ffffff"
local menu_height = dpi(16)
local taglist_square_size = dpi(4)

local theme = {
  font          = "IBM Plex Sans JP Medium 10",

  bg_normal     = bg_normal,
  bg_focus      = bg_focus,
  bg_urgent     = "#ff0000",
  bg_minimize   = "#444444",
  bg_systray    = bg_normal,

  fg_normal     = fg_normal,
  fg_focus      = fg_focus,
  fg_urgent     = "#ffffff",
  fg_minimize   = "#ffffff",

  useless_gap   = dpi(4),
  gap_single_client = true,

  border_width  = dpi(0),
  border_normal = "#000000",
  border_focus  = "#535d6c",
  border_marked = "#91231c",

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--  taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
  taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, fg_normal
  ),
  taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, fg_normal
  ),

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
  menu_submenu_icon = themes_path.."default/submenu.png",
  menu_height = menu_height,
  menu_width  = dpi(100),

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--  bg_widget = "#cc0000"

-- Define the image to load
  titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png",
  titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png",

  titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png",
  titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png",

  titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png",
  titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png",
  titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png",
  titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png",

  titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png",
  titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png",
  titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png",
  titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png",

  titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png",
  titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png",
  titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png",
  titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png",

  titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png",
  titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png",
  titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png",
  titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png",

  wallpaper = themes_path.."default/background.png",

-- You can use your own layout icons like this:
  layout_fairh = themes_path.."default/layouts/fairhw.png",
  layout_fairv = themes_path.."default/layouts/fairvw.png",
  layout_floating  = themes_path.."default/layouts/floatingw.png",
  layout_magnifier = themes_path.."default/layouts/magnifierw.png",
  layout_max = themes_path.."default/layouts/maxw.png",
  layout_fullscreen = themes_path.."default/layouts/fullscreenw.png",
  layout_tilebottom = themes_path.."default/layouts/tilebottomw.png",
  layout_tileleft   = themes_path.."default/layouts/tileleftw.png",
  layout_tile = themes_path.."default/layouts/tilew.png",
  layout_tiletop = themes_path.."default/layouts/tiletopw.png",
  layout_spiral  = themes_path.."default/layouts/spiralw.png",
  layout_dwindle = themes_path.."default/layouts/dwindlew.png",
  layout_cornernw = themes_path.."default/layouts/cornernww.png",
  layout_cornerne = themes_path.."default/layouts/cornernew.png",
  layout_cornersw = themes_path.."default/layouts/cornersww.png",
  layout_cornerse = themes_path.."default/layouts/cornersew.png",

-- Generate Awesome icon:
  awesome_icon = theme_assets.awesome_icon(
    menu_height, bg_focus, fg_focus
  ),

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
  icon_theme = nil
}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

