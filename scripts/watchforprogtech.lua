local GrowthTable = {
    "Pottery",
    "Engineering",
    "Civil_Service",
    "Fertilizer",
    "Biology",
    "Penicillin"
}

local ProductionTable = {
    "Mining",
    "Masonry",
    "Metal_Casting",
    "Industrialization",
    "Ecology"
}

local ScienceTable = {
    "Writing",
    "Education",
    "Scientific_Theory",
    "Plastics",
    "Rocketry",
    "Advanced_Ballistics",
    "Satellites",
    "Particle_Physics",
    "Nanotechnology"
}

local CultureTable = {
    "Drama_and_Poetry",
    "Acoustics",
    "Archaeology",
    "Radio",
    "The_Internet"
}

local GoldTable = {
    "Animal_Husbandry",
    "Currency",
    "Guilds",
    "Banking",
    "Economics",
    "Electricity",
    "Globalization"
}

local HappinessTable = {
    "Calendar",
    "Trapping",
    "Construction",
    "Printing_Press",
    "Refrigeration"
}

local NavyTable = {
    "Sailing",
    "Optics",
    "Compass",
    "Astronomy",
    "Navigation",
    "Steam_Power",
    "Combustion",
    "Telecommunications",
    "Robotics"
}

local MeleeTable = {
    "Bronze_Working",
    "Horseback_Riding",
    "Iron_Working",
    "Chivalry",
    "Steel",
    "Gunpowder",
    "Metallurgy",
    "Rifling",
    "Military_Science",
    "Replaceable_Parts",
    "Combined_Arms",
    "Computers",
    "Mobile_Tactics",
    "Lasers",
    "Nuclear_Fusion"
}

local RangedTable = {
    "Archery",
    "Machinery",
    "Flight",
    "Electronics",
    "Ballistics",
    "Radar",
    "Stealth"
}

local SiegeTable = {
    "Mathematics",
    "Physics",
    "Chemistry",
    "Dynamite",
    "Atomic_Theory",
    "Nuclear_Fission"
}

local MiscTable = {
    "The_Wheel",
    "Philosophy",
    "Theology",
    "Architecture",
    "Railroad"
}

progGrowth = "Prog_Growth"
progProduction = "Prog_Production"
progScience = "Prog_Science"
progCulture = "Prog_Culture"
progGold = "Prog_Gold"
progHappiness = "Prog_Happiness"
progNavy = "Prog_Navy"
progMelee = "Prog_M_Unit"
progRanged = "Prog_R_Unit"
progSiege = "Prog_S_Unit"
progMisc = "Prog_Misc"

TableTable = {
    [progGrowth] = GrowthTable,
    [progProduction] = ProductionTable,
    [progScience] = ScienceTable,
    [progCulture] = CultureTable,
    [progGold] = GoldTable,
    [progHappiness] = HappinessTable,
    [progNavy] = NavyTable,
    [progMelee] = MeleeTable,
    [progRanged] = RangedTable,
    [progSiege] = SiegeTable,
    [progMisc] = MiscTable
}

ProgTable = {
    {"updateProgGrowth", progGrowth},
    {"updateProgProduction", progProduction},
    {"updateProgScience", progScience},
    {"updateProgCulture", progCulture},
    {"updateProgGold", progGold},
    {"updateProgHappiness", progHappiness},
    {"updateProgNavy", progNavy},
    {"updateProgMelee", progMelee},
    {"updateProgRanged", progRanged},
    {"updateProgSiege", progSiege},
    {"updateProgMisc", progMisc}
}

function UpdateProgTech(progtech)
    local TechStage = Tracker:FindObjectForCode(progtech).CurrentStage
    local TechItem = Tracker:FindObjectForCode(TableTable[progtech][TechStage])
    if TechItem then
        TechItem.Active = true
    end
end

for i, v in ipairs(ProgTable) do
    ScriptHost:AddWatchForCode(ProgTable[i][1], ProgTable[i][2], UpdateProgTech) 
end