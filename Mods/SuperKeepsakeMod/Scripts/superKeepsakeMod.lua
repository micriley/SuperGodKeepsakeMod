-- IMPORT @ DEFAULT
-- PRIORITY 150

--[[ Installation Instructions:
	Place this file in /Content/Mods/modMagicEdits/Scripts
	Add 'Import "../Mods/GodDiscipleKeepsakes/Scripts/GodDiscipleKeepsakes.lua"' to the bottom of RoomManager.lua
	Configure by changing values in the config table below
	Load/reload a save
--]]

--[[
Mod: SuperKeepsakeMod
Author: Mike Riley(TurboCop)
        Small mod to set the God's keepsake uses to 99, in order to enable God Disciple runs,
        Or help users find a specific Duo Boon.
        NOTE: This does not affect shops, or Hermes. In the case of multiple room choices,
        a non-discipled god may appear in a 2nd room choice.
-]]

--[[
    Github location: 
]]
ModUtil.RegisterMod("GodDiscipleKeepsakes")


local config = --  
{
    Enabled = true, -- Easy access to turn on and off this mod
	DiscipleKeepsakeUses = 99,	-- How many uses to set on the keepsake
    EnableZeus = true,
    EnableDemeter = true,
    EnableArtemis = true,
    EnableAphrodite = true,
    EnableAres = true,
    EnableAthena = true,
    EnableDionysus = true,
    EnablePoseideon = true,
}

GodDiscipleKeepsakes.config = config

ModUtil.LoadOnce(function()
    if config.Enabled then
        if config.EnableZeus then
            -- ModUtil.PathSet("TraitData.ForceZeusBoonTrait.Uses",config.DiscipleKeepsakeUses) This did not work!
            TraitData.ForceZeusBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableDemeter then
            TraitData.ForceDemeterBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableArtemis then
            TraitData.ForceArtemisBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableAphrodite then
            TraitData.ForceAphroditeBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableAres then
            TraitData.ForceAresBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableAthena then
            TraitData.ForceAthenaBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnableDionysus then
            TraitData.ForceDionysusBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
        if config.EnablePoseideon then
            TraitData.ForcePoseidonBoonTrait.Uses = config.DiscipleKeepsakeUses
        end
    end
end)