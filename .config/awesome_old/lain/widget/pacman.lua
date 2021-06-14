--[[

     Licensed under GNU General Public License v2
      * (c) 2013,      Luke Bonham
      * (c) 2010-2012, Peter Hofmann

--]]

local helpers  = require("lain.helpers")
local shell    = require("awful.util").shell
local focused  = require("awful.screen").focused
local wibox    = require("wibox")
local naughty  = require("naughty")
local string   = string
local tonumber = tonumber

-- Pacman packages (ignoring caches)
-- lain.widget.pacman

local function factory(args)

    return mem
end

return factory
