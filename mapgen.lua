--dimensions--
multidimensions.clear_dimensions()
multidimensions.register_dimension("nightmare_realm",{
  ground_ores = {},
  stone_ores = {["default:stone_with_diamond"]=700, ["default:lava_source"] = 7000},	     
  dirt_ores = {["default:lava_source"] = 2000},
  grass_ores = {},
  air_ores = {["default:obsidian"] = 1000, ["gravity_falls:glowstone"] = 1000},
  water_ores = {["default:obsidian"] = 200},
  sand_ores = {},
  
  self = {},		    
  
  dim_y = 2000,             
  dim_height =  1000,	    
  
  
  dirt_start = 501,           
  dirt_depth = 3,	    
  ground_limit = 530,	    
  water_depth = 8,	    
  enable_water = nil,       -- (nil = true)
  terrain_density = 0.4,    
  flatland = nil,           -- (nil = false)
  teleporter = false,         -- (nil = true) dimension teleporter
  gravity = 0.5,		    
  
  stone = "default:obsidian",
  dirt = "default:obsidian",
  grass = "default:obsidian",
  air = "air",
  water = "default:lava_source",
  sand = "gravity_falls:glowstone",
  bedrock = "multidimensions:bedrock",
  map={spread={x=20,y=18,z=20}},
  sky = {{r=237, g=23, b=23},"plain",{}}, 
})
minetest.register_node("gravity_falls:return_portal", {
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
minetest.register_abm({
	nodenames = {"gravity_falls:portal"},
	interval = 3,
	chance = 1,
	action = function(pos, node)
		for _,obj in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			local name=obj:get_player_name()
			local oldpos = obj:get_pos()
			local meta= minetest.get_meta(pos)
			if name ~= "" then
				local gopos = minetest.deserialize(meta:get_string("pos"))
				obj:set_pos(gopos)
				minetest.set_node(gopos, {name = "gravity_falls:return_portal"})
				minetest.get_meta(gopos):set_string("pos", minetest.serialize(oldpos))
				gopos.y = gopos.y + 1
				minetest.set_node(gopos, {name = "gravity_falls:return_portal"})
				minetest.get_meta(gopos):set_string("pos", minetest.serialize(oldpos))
				gopos.y = gopos.y + 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.x = gopos.x + 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.x = gopos.x - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.z = gopos.z - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.z = gopos.z + 2
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.z = gopos.z - 1
				gopos.x = gopos.x - 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y + 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y + 1
				minetest.set_node(gopos, {name = "default:stone"})
				gopos.y = gopos.y + 1
				minetest.set_node(gopos, {name = "default:stone"})
			end
		end
	end,
})
minetest.register_abm({
	nodenames = {"gravity_falls:return_portal"},
	interval = 3,
	chance = 1,
	action = function(pos, node)
		for _,obj in ipairs(minetest.get_objects_inside_radius(pos, 1)) do
			local name=obj:get_player_name()
			local meta= minetest.get_meta(pos)
			if name ~= "" then
				local testpos = minetest.deserialize(meta:get_string("pos"))
				minetest.get_voxel_manip():read_from_map(testpos, testpos)
				minetest.get_voxel_manip():read_from_map(testpos, testpos)
				minetest.get_voxel_manip():read_from_map(testpos, testpos)
				minetest.get_voxel_manip():read_from_map(testpos, testpos)
				local node = minetest.get_node(testpos)
				if node.name == "gravity_falls:portal" or node.name == "ignore" then
					obj:set_pos(testpos)
				else 
					minetest.set_node(pos, {name = "air"})
					pos.y = pos.y + 1
					minetest.set_node(pos, {name = "air"})
				end
			end
		end
	end,
})
--decorations--
-- minetest.register_decoration({
    -- name = "gravity_falls:shack",
    -- deco_type = "schematic",
    -- place_on = {"default:dirt_with_grass"},
    -- place_offset_y = -4,
    -- sidelen = 16,
    -- fill_ratio = 0.0001,
    -- biomes = {"grassland", "grassland_dunes", "deciduous_forest_shore"},
    -- y_max = 3.5,
    -- y_min = 2.5,
    -- schematic = minetest.get_modpath("gravity_falls").."/schematics/mystery_shack.mts",
    -- flags = "force_placement",
-- })