--AerialAce.Lua
local this={
	modName = "Aerial Ace",
	modDesc = "Own the skies. Adds a whole new outfit replacing MGS1 Snake.",
	modCategory = "Player",
	modAuthor = "Your401kPlan",
}

function this.LoadPlayerParts()
	return{
		{
			4, --MGS1 player part type enum. Applies to all characters that wear the uniform.
			{
				"/Assets/tpp/pack/player/parts/Your401kPlan/plparts_aerialace.fpk", 
				"/Assets/tpp/parts/chara/sna/sna6_main0_def_v00.parts",
				"/Assets/tpp/fova/chara/sna/sna6_main0_def_v00.fv2"
			},
			false, --No head
			false, --No hands
		}
	}
end

return this