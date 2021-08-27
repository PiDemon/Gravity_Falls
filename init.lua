
gravdata = minetest.get_mod_storage()

--Other--
minetest.register_craftitem("gravity_falls:teeth", {
		description = "Deer Teeth",
		inventory_image = "teeth_deer.png",
})
minetest.register_tool("gravity_falls:memory_gun", {
	description = "Memory Gun",
	inventory_image = "mem_gun.png^[transformFX",
	stack_max=1,
	groups = {not_in_creative_inventory = 1},
	on_use = function(itemstack, player, pointed_thing)
		if pointed_thing.type == "object" then
			local object = pointed_thing.ref
			object:set_hp(0)
			object:punch(player, nil, {full_punch_interval = 0.1, damage_groups = {fleshy=500}}, nil)
		end
			
		itemstack:set_wear(itemstack:get_wear() + 300) return itemstack
	end
})
minetest.register_node("gravity_falls:glowstone", {
		description = "Ichorstone",
		tiles = {"gravity_falls_glowstone.png"},
		light_source = 7,
		groups = {snappy = 3},
})
--JOURNALS--
if gravdata:get_string("code_generated") ~= "yes" then
local names = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "oneteen", "twoteen", "threeteen", "fourteen", "fiveteen", "sixteen"}
	local code1  = math.random(1, 16)
	local code2  = math.random(1, 16)
	local code3  = math.random(1, 16)
	local code4  = math.random(1, 16)
	local code5  = math.random(1, 16)
	local code6  = math.random(1, 16)
	gravdata:set_string("code1n", code1)
	gravdata:set_string("code2n", code2)
	gravdata:set_string("code3n", code3)
	gravdata:set_string("code4n", code4)
	gravdata:set_string("code5n", code5)
	gravdata:set_string("code6n", code6)
	gravdata:set_string("code1", names[code1])
	gravdata:set_string("code2", names[code2])
	gravdata:set_string("code3", names[code3])
	gravdata:set_string("code4", names[code4])
	gravdata:set_string("code5", names[code5])
	gravdata:set_string("code6", names[code6])
	gravdata:set_string("code_generated", "yes")
end
local function get_journal_formspec(book, page)
	local page = page
	local book = book
	local bookpage = book..page
	--display part of portal code if on fourth page
	if page == "four" then
		if book == "three" then
			return "size[15,10]"..
			"image_button[-0.3,-0.5;8.2,11;book_"..book.."_page_"..page..".png;"..bookpage..";;false;false;]"..
			"image_button[7.7,-0.5;8.2,11;book_"..book.."_page_"..page.."_o.png;"..bookpage.."o;;false;false;]"..
			"image[1.3,-0.3;1.5,1.5;sign"..gravdata:get_string("code6n").."_off.png]"..
			"image[0,-0.3;1.5,1.5;sign"..gravdata:get_string("code5n").."_off.png]" end
		if book == "two" then
			return "size[15,10]"..
			"image_button[-0.3,-0.5;8.2,11;book_"..book.."_page_"..page..".png;"..bookpage..";;false;false;]"..
			"image_button[7.7,-0.5;8.2,11;book_"..book.."_page_"..page.."_o.png;"..bookpage.."o;;false;false;]"..
			"image[1.3,-0.3;1.5,1.5;sign"..gravdata:get_string("code4n").."_off.png]"..
			"image[0,-0.3;1.5,1.5;sign"..gravdata:get_string("code3n").."_off.png]" end
		if book == "one" then
			return "size[15,10]"..
			"image_button[-0.3,-0.5;8.2,11;book_"..book.."_page_"..page..".png;"..bookpage..";;false;false;]"..
			"image_button[7.7,-0.5;8.2,11;book_"..book.."_page_"..page.."_o.png;"..bookpage.."o;;false;false;]"..
			"image[1.3,-0.3;1.5,1.5;sign"..gravdata:get_string("code2n").."_off.png]"..
			"image[0,-0.3;1.5,1.5;sign"..gravdata:get_string("code1n").."_off.png]" end
	else
		return "size[15,10]"..
		"image_button[-0.3,-0.5;8.2,11;book_"..book.."_page_"..page..".png;"..bookpage..";;false;false;]"..
		"image_button[7.7,-0.5;8.2,11;book_"..book.."_page_"..page.."_o.png;"..bookpage.."o;;false;false;]"
	end
end
minetest.register_craftitem("gravity_falls:1", {
		description = "1",
		inventory_image = "journal_1.png",
		groups = {not_in_creative_inventory = 1},
		on_use = function(itemstack, player, pointed_thing)
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("one", "four"))
		end
})
minetest.register_craftitem("gravity_falls:2", {
		description = "2",
		inventory_image = "journal_2.png",
		groups = {not_in_creative_inventory = 1},
		on_use = function(itemstack, player, pointed_thing)
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("two", "four"))
		end
})
minetest.register_craftitem("gravity_falls:3", {
		description = "3",
		inventory_image = "journal_3.png",
		groups = {not_in_creative_inventory = 1},
		on_use = function(itemstack, player, pointed_thing)
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three", "one"))
		end
})
--BILL--
local function get_bill_formspec(key)
	if key == "start" then
		return "size[10,5]"..
		"label[0.5,0.5;Hello, Mortal! My name is Bill Cypher.]"..
		"button[1,1;5,1;deal;I need you to do something for me.]"
	elseif key == "want" then
		return "size[10,10]"..
		"label[0.5,0.5;What do you want? I'll only ask for a small favor in return...]"..
		"button[1,1;5,1;money;I want riches.]"..
		"button[1,2;5,1;teeth;I want deer teeth.]"..
		"button[1,3;5,1;summer;I wish summer would never end.]"
	--handshake screens
	elseif key == "shake_riches" then
		return "size[10,3]"..
			"label[0.5,0.5;I can make you very rich... Want to make a deal?]"..
			"image_button[0.5,1.5;2,2;handshake.png;money_2; ;false;false;handshake.png]"
	elseif key == "shake_teeth" then
		return "size[10,3]"..
			"label[0.5,0.5;I can get you some deer teeth, if you help me a little bit... is it a deal?]"..
			"image_button[0.5,1.5;2,2;handshake.png;teeth_2; ;false;false;handshake.png]"
	--tell screens
	elseif key == "tell_riches" then
		return "size[10,2]"..
			"label[0.5,0.5;Here you go, 40 diamonds. Now, for your end of the deal...]"
	elseif key == "tell_teeth" then
		return "size[10,2]"..
			"label[0.5,0.5;Deer Teeth! For you, kid! Now, something from you...]"
	end
end

local function my_end(player)
	local rand = math.random(1,3)
	local inv = player:get_inventory()
	if inv:contains_item("main", "gravity_falls:rift") then
	else
		if rand == 1 then
			player:set_hp(1)
			local formspec = "size[10,2]".."label[0.5,0.5;Watching you mortals suffer is hilarious!]"
			minetest.show_formspec(player:get_player_name(), "bill_deal", formspec)
		elseif rand == 2 then
			player:get_inventory():set_list("main", {})
			local formspec = "size[10,2]".."label[0.5,0.5;I'll just take a few things...]"
			minetest.show_formspec(player:get_player_name(), "bill_deal", formspec)
		elseif rand == 3 then
			player:set_hp(0)
			minetest.chat_send_player(player:get_player_name(), "<Bill Cipher> I think I'll just take your life, if you don't mind")
		end
	end
end
mobs:register_mob("gravity_falls:bill", {
	type = "animal",
	nametag = "Bill Cipher",
	passive = false,
	attack_type = "dogfight",
	attack_npcs = false,
	reach = 4,
	damage = 4,
	hp_min = 10,
	hp_max = 10,
	armor = 100,
	fly = true,
	pushable = false,
	collisionbox = {0.5, 0.5, 0.5, -0.5, -0.5, -0.5},
	visual = "upright_sprite",
	textures = {
		{"bill.png", "bill_back.png"},
		
	},
	walk_velocity = 1,
	run_velocity = 2,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 3},
		{name = "mobs:leather", chance = 1, min = 0, max = 2},
	},
	immune_to = {{"all"}},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	follow = {
		"gravity_falls:teeth"
	},
	view_range = 8,
	on_rightclick = function(self, clicker)
		minetest.show_formspec(clicker:get_player_name(), "bill_deal", get_bill_formspec("start"))
	end,
})
mobs:register_egg("gravity_falls:bill", "Bill Cipher", "bill.png")
--Receive Fields--
minetest.register_on_player_receive_fields(function(player, formname, fields)
	if formname == "bill_deal" then
		if fields.deal then
			minetest.show_formspec(player:get_player_name(), "bill_deal", get_bill_formspec("want"))
		--riches
		elseif fields.money then
			minetest.show_formspec(player:get_player_name(), "bill_deal", get_bill_formspec("shake_riches"))
		elseif fields.money_2 then
			minetest.show_formspec(player:get_player_name(), "bill_deal", get_bill_formspec("tell_riches"))
			minetest.add_item(player:get_pos(), "default:diamond 40")
			minetest.after(2, function(player) my_end(player) end, player)
		--teeth
		elseif fields.teeth then
			minetest.show_formspec(player:get_player_name(), "bill_deal", get_bill_formspec("shake_teeth"))
		elseif fields.teeth_2 then
			minetest.show_formspec(player:get_player_name(), "bill_deal", get_bill_formspec("tell_teeth"))
			minetest.add_item(player:get_pos(), "gravity_falls:teeth")
			minetest.after(2, function(player) my_end(player) end, player)
		end
	end
	if formname == "journal" then
		if fields.threeoneo then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","two"))
		elseif fields.threetwo then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","one"))
		elseif fields.threetwoo then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","three"))
		elseif fields.threethree then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","two"))
		elseif fields.threethreeo then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","four"))
		elseif fields.threefour then 
			minetest.show_formspec(player:get_player_name(), "journal", get_journal_formspec("three","three"))
		end
	end
end)
--files--
dofile(minetest.get_modpath("gravity_falls") .. "/portal.lua")
dofile(minetest.get_modpath("gravity_falls") .. "/mapgen.lua")