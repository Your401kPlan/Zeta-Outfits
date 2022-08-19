--Anadyr.Lua
local this={
	modName = "Anadyr & Letniy",
	modDesc = "Become like the northern wind. Take flight as a Kestrel and prey on the unworthy.",
	modCategory = "Player",
	modAuthor = "Your401kPlan",

	uniformRangeLabel = {"Anadyr","Letniy"},
}

function this.ModMenu(menu)
	ZetaMenu.CreateModMenu(this,menu) --Create mod menu
	
	local funcReload = function()ZetaCore.ReloadMods()end	
	ZetaMenu.AddModItemToMenu(
	this,
	menu,
	ZetaMenu.ListOption(this.uniformRangeLabel,0,funcReload),  
	"AnadyrLetniyType", 
	"Uniform Type", 
	"Changes which uniform replaces DD Male venom sneaking suit")
end

function this.LoadPlayerParts()
	local costumeType = ZetaVar.GetModIvar(this, "AnadyrLetniyType") + 1
	return{
		{
			{"DD_MALE", 8}, --Applies to DD Male soldiers wearing the venom outfit
			{
				"/Assets/tpp/pack/player/parts/Your401kPlan/plparts_anadyr"..costumeType..".fpk", 
				"/Assets/tpp/parts/chara/sna/sna4_plym0_def_v00.parts",
				"/Assets/tpp/fova/chara/sna/sna4_plym0_def_v00.fv2"
			},
			true, --Male DD Soldiers have heads.
			false, --No bionic arm
		}
	}
end

return this