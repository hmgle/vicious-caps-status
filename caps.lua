---------------------------------------------------
-- Licensed under the GNU General Public License v2
--  * (c) 2016, hmgle. <dustgle@gmail.com>
---------------------------------------------------

-- {{{ Grab environment
local setmetatable = setmetatable
-- }}}

-- Caps: provides status of keyboard's CAPSLOCK
-- vicious.widgets.caps
local caps = {}


-- {{{ caps widget type
local function worker(format)
   local f = io.popen("xset -q | grep 'Caps Lock: *on'")
   local capsstatus = f:read("*all")
   f:close()
   return capsstatus:len() > 0 and "A" or 'a'
end
-- }}}

return setmetatable(caps, { __call = function(_, ...) return worker(...) end })
