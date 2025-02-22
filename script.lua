--- SCRIPT NAME!
--
-- 
-- 
-- 
-- 
-- 
-- v0.1 imminent gloom

local g = grid.connect()

local tab = require("tabutil")

-- setup
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local save_state = true

local key_1_held = false
local key_2_held = false
local key_3_held = false

-- functions
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --


  
-- clocks
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --



-- init
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function init()

  
   if save_state then params:read(norns.state.data .. "state.pset") end
end

-- grid: interaction
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function g.key(x, y, z)
   
end

-- grid: levels
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local br_   =  0 -- 

-- grid: drawing
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function g_redraw()
   g:all(0)

   g:update()
end

-- norns: keys
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function key(n, z)
   if n == 1 and z == 1 then key_1_held = true else key_1_held = false end
   if n == 2 and z == 1 then key_2_held = true else key_2_held = false end
   if n == 3 and z == 1 then key_3_held = true else key_3_held = false end
   
   if not key_1_held then
      if n == 1 then

      end
      
      if n == 2 then
        
      end
      
      if n == 3 then

      end
   else
      if n == 1 then
      
      end
      
      if n == 2 then
      
      end
      
      if n == 3 then
      
      end
   end
end

-- norns: encoders
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function enc(n, d)
   if not key_1_held then
      if n == 1 then

      end
      
      if n == 2 then

      end
      
      if n == 3 then

      end
   else
      if n == 1 then
      
      end
      
      if n == 2 then
      
      end
      
      if n == 3 then
      
      end
   end
end

-- norns: drawing
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function redraw()
   screen.clear()
   
   screen.update()
end

-- cleanup
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function cleanup()
   if save_state then params:write(norns.state.data .. "state.pset") end
end
