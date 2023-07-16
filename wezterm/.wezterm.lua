-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight'
-- Only required for WSL
config.default_domain = 'WSL:openSUSE-Tumbleweed'
config.font = wezterm.font 'JetBrains Mono'

-- Art is too bright so may dim terminal (only need if got bg image)
local dimmer = { brightness = 0.1 }

config.background = {
    {
      -- Background image 
      source = {
          File = "C:\\Users\\kaizh\\Downloads\\Wallpaper\\momiji.png"
      },
      hsb = dimmer
    }
}

-- and finally, return the configuration to wezterm
return config
