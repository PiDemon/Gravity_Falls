--pos is eaither engine, lever, or generator position.
local function check_portal(pos)
	--check console
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:console" then return false end
	if minetest.get_meta(pos):get_string("active") ~= "yes" then  return false end
	pos.z = pos.z + 10
	--check wire to generator
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "gravity_falls:generator" then return false end
	--check portal structure
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign1" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign2" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign3" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:sign4" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign5" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign6" then return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then   return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then   return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign7" then   return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:sign8" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign9" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign10" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then  return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign11" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign12" then return false end
	pos.x = pos.x + 1 
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign13" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign14" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign15" then return false end
	pos.y = pos.y - 1
	if minetest.get_node(pos).name ~= "gravity_falls:light" then  return false end
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	if minetest.get_node(pos).name ~= "gravity_falls:sign16" then return false end
	pos.y = pos.y - 3
	--check first wire
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	--turn 
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	--pillar 
	pos.z = pos.z - 3
	if minetest.get_meta(pos):get_string("active") ~= "yes" then  return false end
	pos.z = pos.z + 8
	pos.x = pos.x + 6
	--check other wire
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	--turn
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then   return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	--pillar
	pos.z = pos.z - 3
	if minetest.get_meta(pos):get_string("active") ~= "yes" then  return false end
	pos.z = pos.z + 8
	pos.x = pos.x - 6
	return true
end
local function change_frame(pos)
	pos.y = pos.y + 2
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign1_a"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign2_a"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign3_a"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	pos.x = pos.x + 1 
	minetest.set_node(pos, {name = "gravity_falls:sign4_a"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign5_a"})
	pos.x = pos.x - 2
	pos.y = pos.y + 1
	pos.x = pos.x + 3
	minetest.set_node(pos, {name = "gravity_falls:sign6_a"})
	pos.y = pos.y + 1
	pos.x = pos.x - 4
	pos.y = pos.y + 1
	pos.x = pos.x + 5
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign7_a"})
	pos.x = pos.x + 1 
	minetest.set_node(pos, {name = "gravity_falls:sign8_a"})
	pos.y = pos.y + 1
	pos.x = pos.x + 1 
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign9_a"})
	pos.x = pos.x + 1
	pos.y = pos.y + 1
	pos.x = pos.x + 1 
	pos.x = pos.x + 3
	pos.y = pos.y - 1
	pos.x = pos.x - 3
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign10_a"})
	pos.x = pos.x + 3
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign11_a"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign12_a"})
	pos.x = pos.x + 1 
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign13_a"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign14_a"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign15_a"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign16_a"})
	pos.y = pos.y - 3
end
local function check_pillar(pos)
	pos.z = pos.z + 2
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:engine" then return false end
	pos.y = pos.y + 10
	pos.z = pos.z + 2
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:steelblock" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.x = pos.x + 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "default:obsidian_glass" then return false end
	pos.y = pos.y - 10
	pos.z  = pos.z - 3
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:wire" then  return false end
	pos.z = pos.z - 1
	if minetest.get_node(pos).name ~= "gravity_falls:gauge6" then return false end
	minetest.set_node(pos, {name = "gravity_falls:gauge1"})
	pos.z = pos.z + 8
	return true
end
local function draw_layer(pos2)
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.x = pos2.x+1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.z = pos2.z-1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.z = pos2.z-1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.x = pos2.x-1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.x = pos2.x-1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "gravity_falls:beam"})
	pos2.x = pos2.x+1
	pos2.z = pos2.z-1
end
local function erase_layer(pos2)
	minetest.set_node(pos2, {name = "air"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "air"})
	pos2.x = pos2.x+1
	minetest.set_node(pos2, {name = "air"})
	pos2.z = pos2.z-1
	minetest.set_node(pos2, {name = "air"})
	pos2.z = pos2.z-1
	minetest.set_node(pos2, {name = "air"})
	pos2.x = pos2.x-1
	minetest.set_node(pos2, {name = "air"})
	pos2.x = pos2.x-1
	minetest.set_node(pos2, {name = "air"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "air"})
	pos2.z = pos2.z+1
	minetest.set_node(pos2, {name = "air"})
	pos2.x = pos2.x+1
	pos2.z = pos2.z-1
end
--i'll condense this at some point
local function reverse_portal(pos)
	pos.z = pos.z - 10
	minetest.set_node(pos, {name = "gravity_falls:console"})
	pos.z = pos.z + 10
	pos.z = pos.z + 6
	pos.y = pos.y + 2
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign1"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign2"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign3"})
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	pos.x = pos.x + 1 
	minetest.set_node(pos, {name = "gravity_falls:sign4"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign5"})
	pos.x = pos.x - 2
	pos.y = pos.y + 1
	pos.x = pos.x + 3
	minetest.set_node(pos, {name = "gravity_falls:sign6"})
	pos.y = pos.y + 1
	pos.x = pos.x - 4
	pos.y = pos.y + 1
	pos.x = pos.x + 5
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign7"})
	pos.x = pos.x + 1 
	minetest.set_node(pos, {name = "gravity_falls:sign8"})
	pos.y = pos.y + 1
	pos.x = pos.x + 1 
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign9"})
	pos.x = pos.x + 1
	pos.y = pos.y + 1
	pos.x = pos.x + 4
	pos.y = pos.y - 1
	pos.x = pos.x - 3
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign10"})
	pos.x = pos.x + 3
	pos.y = pos.y - 1
	pos.x = pos.x - 2
	minetest.set_node(pos, {name = "gravity_falls:sign11"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:sign12"})
	pos.x = pos.x + 1 
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign13"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign14"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:sign15"})
	pos.y = pos.y - 1
	pos.x = pos.x - 1
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:sign16"})
	pos.y = pos.y - 3
	--portal blocks
	pos.y = pos.y + 4
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	pos.x = pos.x + 3
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	pos.x = pos.x + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "air"})
	pos.y = pos.y - 7
	pos.x = pos.x - 2
	--engines
	pos.z = pos.z - 8
	pos.x = pos.x + 6
	minetest.set_node(pos, {name = "gravity_falls:engine"})
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y - 9
	pos.x = pos.x - 12
	minetest.set_node(pos, {name = "gravity_falls:engine"})
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
	pos.y = pos.y + 1
	erase_layer(pos)
end
local function turn_on_portal(pos, player)
	local consolemeta = minetest.get_meta({x = pos.x,y = pos.y, z = pos.z-12})
	local target = {x=pos.x,y=2540,z=pos.z}
	consolemeta:set_string("formspec", "size[10,5]".."label[0.5,0.5;Portal Status: 100% loaded]")
	pos.y = pos.y + 4
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"}) 
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	pos.x = pos.x - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	pos.x = pos.x + 3
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	pos.x = pos.x + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y + 1
	minetest.set_node(pos, {name = "gravity_falls:portal"})
	minetest.get_meta(pos):set_string("pos", minetest.serialize(target))
	pos.y = pos.y - 7
	pos.x = pos.x - 2
	
end
--Console--
local function get_formspec()
	return "size[10,6]"..
			"image_button[1,1;1,1;sign1_off.png;one;;false;false;]"..
			"image_button[1,2;1,1;sign2_off.png;two;;false;false;]"..
			"image_button[1,3;1,1;sign3_off.png;three;;false;false;]"..
			"image_button[1,4;1,1;sign4_off.png;four;;false;false;]"..
			"image_button[2,1;1,1;sign5_off.png;five;;false;false;]"..
			"image_button[2,2;1,1;sign6_off.png;six;;false;false;]"..
			"image_button[2,3;1,1;sign7_off.png;seven;;false;false;]"..
			"image_button[2,4;1,1;sign8_off.png;eight;;false;false;]"..
			"image_button[3,1;1,1;sign9_off.png;nine;;false;false;]"..
			"image_button[3,2;1,1;sign10_off.png;ten;;false;false;]"..
			"image_button[3,3;1,1;sign11_off.png;oneteen;;false;false;]"..
			"image_button[3,4;1,1;sign12_off.png;twoteen;;false;false;]"..
			"image_button[4,1;1,1;sign13_off.png;threeteen;;false;false;]"..
			"image_button[4,2;1,1;sign14_off.png;fourteen;;false;false;]"..
			"image_button[4,3;1,1;sign15_off.png;fiveteen;;false;false;]"..
			"image_button[4,4;1,1;sign16_off.png;sixteen;;false;false;]"..
			"button[1,4.5;1,3;submit;Enter]"
end
minetest.register_node("gravity_falls:console", {
		description = "Portal Console",
		light_source = 2,
		tiles = {"gravity_falls_console_side.png", "gravity_falls_console_side.png", "gravity_falls_console_side.png", "gravity_falls_console_side.png", "gravity_falls_console_side.png", "gravity_falls_console.png"},
		groups = {cracky = 3},
		on_construct = function(pos, node)
			minetest.get_meta(pos):set_string("formspec", get_formspec())
		end,
		on_receive_fields = function(pos, formname, fields, sender)
			local meta = minetest.get_meta(pos)
			if fields.one then meta:set_string("input", meta:get_string("input").."one") end 
			if fields.two then meta:set_string("input", meta:get_string("input").."two") end 
			if fields.three then meta:set_string("input", meta:get_string("input").."three") end 
			if fields.four then meta:set_string("input", meta:get_string("input").."four") end 
			if fields.five then meta:set_string("input", meta:get_string("input").."five") end 
			if fields.six then meta:set_string("input", meta:get_string("input").."six") end 
			if fields.seven then meta:set_string("input", meta:get_string("input").."seven") end 
			if fields.eight then meta:set_string("input", meta:get_string("input").."eight") end 
			if fields.nine then meta:set_string("input", meta:get_string("input").."nine") end 
			if fields.ten then meta:set_string("input", meta:get_string("input").."ten") end 
			if fields.oneteen then meta:set_string("input", meta:get_string("input").."oneteen") end 
			if fields.twoteen then meta:set_string("input", meta:get_string("input").."twoteen") end 
			if fields.threeteen then meta:set_string("input", meta:get_string("input").."threeteen") end 
			if fields.fourteen  then meta:set_string("input", meta:get_string("input").."fourteen") end 
			if fields.fiveteen then meta:set_string("input", meta:get_string("input").."fiveteen")  end 
			if fields.sixteen then meta:set_string("input", meta:get_string("input").."sixteen") end 
			if fields.submit then 
				if meta:get_string("input") == gravdata:get_string("code1")..gravdata:get_string("code2")..gravdata:get_string("code3")..gravdata:get_string("code4")..gravdata:get_string("code5")..gravdata:get_string("code6") then 
					meta:set_string("active", "yes") meta:set_string("formspec", "size[10,6]".."label[0.5,0.5;Programing Complete]") else  meta:set_string("input", "") 
				end
			end
		end		
})
--Generator--
minetest.register_node("gravity_falls:generator", {
		description = "Transdimesional Generator",
		tiles = {"generator.png"},
		groups = {cracky = 3},
})
--Engine--
minetest.register_node("gravity_falls:engine", {
		description = "Transdimesional Engine",
		use_texture_alpha = true,
		tiles = {"gravity_falls_engine.png", "blank_frame.png", "blank_frame.png", "blank_frame.png", "blank_frame.png", "blank_frame.png"},
		groups = {cracky = 3},
		on_rightclick = function(pos, node, clicker, itemstack)
			if check_pillar(pos) then 
				minetest.get_meta(pos):set_string("active", "yes")
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
				pos.y = pos.y + 1
				draw_layer(pos)
			end
		end,
})
--Stablilizer--
minetest.register_node("gravity_falls:light", {
		description = "Portal Stabilizer",
		tiles = {"default_steel_block.png","default_steel_block.png","default_steel_block.png","default_steel_block.png","default_steel_block.png","portal_light.png"},
		light_source = 5,
		groups = {cracky = 3}
})
--Gauge--
minetest.register_node("gravity_falls:gauge1", {
	description = "Nuclear Fuel Gauge",
	groups = {cracky=2},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge1.png"},
	on_rightclick = function(pos, node, clicker, itemstack)
		if itemstack:get_name() == "default:diamond" then itemstack:take_item() minetest.set_node(pos, {name = "gravity_falls:gauge2"}) end
	end
})
minetest.register_node("gravity_falls:gauge2", {
	description = "Nuclear Fuel Gauge",
	groups = {cracky=2, not_in_creative_inventory = 1},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge2.png"},
	on_rightclick = function(pos, node, clicker, itemstack)
		if itemstack:get_name() == "default:diamond" then itemstack:take_item() minetest.set_node(pos, {name = "gravity_falls:gauge3"}) end
	end
})
minetest.register_node("gravity_falls:gauge3", {
	description = "Nuclear Fuel Gauge",
	groups = {cracky=2, not_in_creative_inventory = 1},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge3.png"},
	on_rightclick = function(pos, node, clicker, itemstack)
		if itemstack:get_name() == "default:diamond" then itemstack:take_item() minetest.set_node(pos, {name = "gravity_falls:gauge4"}) end
	end
})
minetest.register_node("gravity_falls:gauge4", {
	description = "Nuclear Fuel Gauge",
	groups = {cracky=2, not_in_creative_inventory = 1},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge4.png"},
	on_rightclick = function(pos, node, clicker, itemstack)
		if itemstack:get_name() == "default:diamond" then itemstack:take_item() minetest.set_node(pos, {name = "gravity_falls:gauge5"}) end
	end
})
minetest.register_node("gravity_falls:gauge5", {
	description = "Nuclear Fuel Gauge",
	groups = {cracky=2, not_in_creative_inventory = 1},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge5.png"},
	on_rightclick = function(pos, node, clicker, itemstack)
		if itemstack:get_name() == "default:diamond" then itemstack:take_item() minetest.set_node(pos, {name = "gravity_falls:gauge6"}) end
	end
})
minetest.register_node("gravity_falls:gauge6", {
	description = "Nuclear Fuel Gauge (Full)",
	groups = {cracky=2, not_in_creative_inventory = 1},
	tiles = {"gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge_side.png", "gauge6.png"},
})
--wire--
minetest.register_node("gravity_falls:wire", {
		description = "Transdimesional Wire",
		inventory_image = "gravity_falls_straight.png",
		wield_image = "gravity_falls_straight.png",
		drawtype = "raillike",
		sunlight_propagates = true,
		walkable = false,
		paramtype = "light",
		tiles = {"gravity_falls_straight.png", "gravity_falls_curve.png", "gravity_falls_t.png", "gravity_falls_cross.png"},
		selection_box = {
			type = "fixed",
			fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
		},
		groups = {snappy = 3},
})
--lever--
minetest.register_node("gravity_falls:lever", {
		description = "Portal Lever",
		drawtype = "nodebox",
		sunlight_propagates = true,
		paramtype = "light",
		tiles = {"gravity_falls_lever_top.png", "gravity_falls_lever_top.png", "gravity_falls_lever.png", "gravity_falls_lever.png", "gravity_falls_lever.png", "gravity_falls_lever.png"},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -5/16, -0.5, 0.5, -0.5, 0.5},
				{-3/16, -5/16, -3/16, 3/16, -4/16, 3/16},
				{-1/16, -4/16, -1/16, 1/16, 7/16, 1/16},
				{-2/16, 7/16, -2/16, 2/16, 0.5, 2/16},
			}
		},
		groups = {cracky = 3},
		on_rightclick = function(pos, node, clicker, itemstack)
		local control = clicker:get_player_control()
		if control.jump then
			pos.z = pos.z + 6
			pos.y = pos.y + 3
			pos.x = pos.x - 1
			if minetest.get_node(pos).name == "gravity_falls:sign1_a" then
				pos.z = pos.z - 6
				pos.y = pos.y - 3
				pos.x = pos.x + 1
				reverse_portal(pos)
			end
		else
			minetest.set_node(pos, {name = "gravity_falls:lever_active"})
			if check_portal(pos) then
				minetest.chat_send_player(clicker:get_player_name(), "Transdimesional Portal Activated")
				change_frame(pos)
				turn_on_portal(pos)
			end
		end
	end
})
minetest.register_node("gravity_falls:lever_active", {
		description = "Portal Lever (pressed)",
		drawtype = "nodebox",
		sunlight_propagates = true,
		paramtype = "light",
		tiles = {"gravity_falls_lever_top.png", "gravity_falls_lever_top.png", "gravity_falls_lever_pressed.png", "gravity_falls_lever_pressed.png", "gravity_falls_lever_pressed.png", "gravity_falls_lever_pressed.png"},
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -5/16, -0.5, 0.5, -0.5, 0.5},
				{-3/16, -5/16, -3/16, 3/16, -4/16, 3/16},
				{-1/16, -4/16, -1/16, 1/16, 0, 1/16},
				{-2/16, 0/16, -2/16, 2/16, 1/16, 2/16},
			}
		},
		on_construct = function(pos, node)
			minetest.after(1, function(pos) minetest.set_node(pos, {name = "gravity_falls:lever"}) end, pos)
		end,
		groups = {not_in_creative_inventory = 1, cracky = 3},
})
--Portal Frames--
local function register_frame(num)
	minetest.register_node("gravity_falls:sign"..num, {
			description = "Portal Frame",
			tiles = {"blank_frame.png","blank_frame.png","blank_frame.png","blank_frame.png", "blank_frame.png", "sign"..num.."_off.png"},
			groups = {cracky = 3},
	})
	minetest.register_node("gravity_falls:sign"..num.."_a", {
			description = "Portal Frame (active)",
			light_source = 7,
			tiles = {"blank_frame.png","blank_frame.png","blank_frame.png","blank_frame.png","blank_frame.png", "sign"..num.."_on.png"},
			groups = {cracky = 3, not_in_creative_inventory = 1},
			drop = "gravity_falls:sign"..num,
	})
end
register_frame('1')
register_frame('2')
register_frame('3')
register_frame('4')
register_frame('5')
register_frame('6')
register_frame('7')
register_frame('8')
register_frame('9')
register_frame('10')
register_frame('11')
register_frame('12')
register_frame('13')
register_frame('14')
register_frame('15')
register_frame('16')
--Non-breakable--
minetest.register_node("gravity_falls:portal", {
	description = "Transdimesional Portal",
	tiles = {"gravity_falls_portal.png","gravity_falls_portal.png","gravity_falls_portal.png","gravity_falls_portal.png",{name = "gravity_falls_portal.png",animation = {type = "vertical_frames",aspect_w = 16,aspect_h = 16,length = 0.5}},{name = "gravity_falls_portal.png",animation = {type = "vertical_frames",aspect_w = 16,aspect_h = 16,length = 0.5}}},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	digable = false,
	pointable = false,
	buildable_to = false,
	drop = "",
	light_source = 9,
	post_effect_color = {a=180, r=40, g=40, b=130},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1,  0.5, 0.5, 0.1},
		},
	},
	groups = {not_in_creative_inventory=1}
})
minetest.register_node("gravity_falls:beam", {
	description = "Beam",
	tiles = {{name = "gravity_falls_beam.png",animation = {type = "vertical_frames",aspect_w = 16,aspect_h = 16,length = 0.5}}},
	sunlight_propagates = true,
	walkable = false,
	digable = false,
	pointable = false,
	buildable_to = false,
	damage_per_second = 2,
	drop = "",
	paramtype = "light",
	post_effect_color = {a=180, r=40, g=40, b=130},
	light_source = 5,
	alpha = 200,
	groups = {not_in_creative_inventory=1}
})