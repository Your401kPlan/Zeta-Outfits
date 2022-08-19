--Red Army Outfits.Lua
local this={
	modName = "Red Army Outfits",
	modDesc = "Classic look, countless kills. Go get em tiger.",
	modCategory = "Player",
	modAuthor = "Your401kPlan",

	uniformRangeLabel = {"Spetsnaz","Sokol","Scarf","Base","Too Cool","Sunstroke","Cascade","Taiga","All Business","Archangel","Autumn","Apparition","Aurora"},
}

function this.ModMenu(menu)
	ZetaMenu.CreateModMenu(this,menu) --Create mod menu
	
	local funcReload = function()ZetaCore.ReloadMods()end	
	ZetaMenu.AddModItemToMenu(
	this,
	menu,
	ZetaMenu.ListOption(this.uniformRangeLabel,0,funcReload),  
	"RedArmyOutfitType", 
	"Uniform Type", 
	"Changes which uniform replaces DD Male venom sneaking suit")
end

function this.LoadPlayerParts()
    local costumeType = ZetaVar.GetModIvar(this, "RedArmyOutfitType") + 1
    return{
        {
            {"DD_MALE", 8}, --Applies to DD Male soldiers wearing the venom outfit
            {
                "/Assets/tpp/pack/player/parts/Your401kPlan/plparts_redarmy"..costumeType..".fpk", 
                "/Assets/tpp/parts/chara/sna/sna4_plym0_def_v00.parts",
                "/Assets/tpp/fova/chara/sna/sna4_plym0_def_v00.fv2"
            },
            true, --Male DD Soldiers have heads.
            false, --No bionic arm
        }
    }
end

return this