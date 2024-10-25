--- SCRIPT NAME!
--
-- 
-- 
-- 
-- 
-- 
-- v0.1 imminent gloom

local g = grid:connect()

local tab = require("tabutil")
-- local lattice = require("lattice")
-- local nb = include("lib/nb/lib")

-- setup
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local save_on_exit = true

local screen_dirty
local grid_dirty

local key = {
   held = false,
   held = false,
   held = false,
}

-- functions
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

-- local function nb_trigger(voicename, note, velocity, duration)
--    player = params:lookup_param(voicename):get_player()
--    player:play_note(note, velocity, duration)
-- end
  
-- clocks
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local function m_screen()
   if screen_dirty then refresh() end
end

local function m_grid()
   if grid_dirty then refresh() end
end

-- init
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function init()

   -- nb.voice_count = 1

   -- params
   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

   -- params:add_separator("NB VOICES")
   -- nb:add_param("voicename", "description")
   -- nb:add_player_params()

   -- params:add_separator("PARMS")
    
   -- params:add_control("", "", controlspec())
   -- params:set_action("", function (x)  end)
   
   -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   
   screen_dirty = true
   grid_dirty = true

   metro_screen = metro.init(m_screen, 1000 / 30, -1)
   metro_grid = metro.init(m_grid, 1000 / 30, -1)
   
   if save_on_exit then params:read("/home/we/dust/data/" .. norns.state.name .. "_state.pset") end
end

-- grid: interaction
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function g:keys(x, y, z)
   
end

-- grid: levels
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

local br_   =  0 -- 

-- grid: drawing
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function g_redraw()
   if grid_dirty then
      g:all(0)



      g:refresh()
      grid_dirty = false
   end
end

-- norns: drawing
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function redraw()
   if screen_dirty then
      screen.clear()



      screen.update()
      screen_dirty = false
   end
end

-- norns: interaction: keys
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function keys(n, z)
   if n == 1 then key[1].held = true else key[1].held = false end
   if n == 2 then key[2].held = true else key[2].held = false end
   if n == 3 then key[3].held = true else key[3].held = false end
   
   if not key[1].held then
      if n == 1 then

      end
      
      if n == 2 then

      end
      
      if n == 3 then

      end
   end

   if key[1].held then
      if n == 1 then
      
      end
      
      if n == 2 then
      
      end
      
      if n == 3 then
      
      end
   end
end

-- norns: interaction: encoders
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function enc(n, d)
   if not key[1].held then
      if n == 1 then

      end
      
      if n == 2 then

      end
      
      if n == 3 then

      end
   end

   if key[1].held then
      if n == 1 then
      
      end
      
      if n == 2 then
      
      end
      
      if n == 3 then
      
      end
   end
end

-- cleanup
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function cleanup()
   -- nb:stop_all()
   metro.stop(m_screen)
   metro.stop(m_grid)
   if save_on_exit then params:write("/home/we/dust/data/" .. norns.state.name .. "_state.pset") end
end
