local MP = minetest.get_modpath("smk_custom")

-- unknown item aliasing
dofile(MP.."/alias.lua")

-- death fix stuff (Block City Server)
dofile(MP.."/fix_dead_on_login.lua")

-- privilages
dofile(MP.."/privs/staff.lua")
-- dofile(MP.."/privs/protection.lua")

-- death message
dofile(MP.."/death.lua")

-- join-limit bypass
dofile(MP.."/userlimit.lua")

-- protected sethome
dofile(MP.."/sethome.lua")

-- recipe redefinitions
dofile(MP.."/recipes.lua")

-- craft overrides
dofile(MP.."/crafts.lua")

-- server-reboot
dofile(MP.."/reboot.lua")

-- server_news
dofile(MP.."/server_news.lua")

-- rules
dofile(MP.."/rules.lua")

-- wiki mod
if not minetest.get_modpath("wiki") then
    -- found wiki mod separately then don't override
    dofile(MP.."/wiki.lua")
end

-- spawn mod
dofile(MP.."/spawn.lua")

-- maptools custmization
if minetest.get_modpath("maptools") then
	dofile(MP.."/maptools.lua")
end

if minetest.get_modpath("bonemeal") then
	dofile(MP.."/bonemeal.lua")
end

-- fly check
dofile(MP.."/privs/fly.lua")
-- fly check to not affect someone with player_fly privs
dofile(MP.."/fly.lua")

if minetest.get_modpath("pipeworks") then
	if pipeworks.tptube then
		dofile(MP.."/tp_tube_fixer.lua")
	end
end

dofile(MP.."/disallow_new_players.lua")

dofile(MP.."/uninstall.lua")

-- (optional multicraft fix)

minetest.register_on_joinplayer(function(player)
	player:hud_set_hotbar_itemcount(9)
end)

--minetest.override_item('', {wield_image = 'wieldhand.png'})


print("[OK] smk_custom")
