


-- settler santity functuions

function Settler()
    return not has("Settlersanity")
end

function SettlerCount(amount)
    return Tracker:ProviderCountForCode("MaxSettlers") >= tonumber(amount)
end

-- Resource functions

function ALUMINUM()
    return has("Mining") and has("Electricity")
end
function COAL()
    return has("Mining") and has("Industrialization")
end
function HORSE()
    return has("Animal_Husbandry")
end
function IRON()
    return has("Mining") and has("Iron_Working")
end
function OIL()
    return has("Biology")
end
function URANIUM()
    return has("Mining") and has("Atomic_Theory")
end

-- Building functions

function MANHATTEN_PROJECT()
    return has("Atomic_Theory")
end
function LIBRARY()
    return has("Writing")
end
function UNIVERSITY()
    return LIBRARY() and has("Scientific_Theory")
end
function BARRACKS()
    return has("Bronze_Working")
end
function ARMORY()
    return BARRACKS() and has("Steel")
end
function MILITARY_ACADEMY()
    return ARMORY() and has("Military_Science")
end

-- Unit functions

function SETTLER()
    return true
end
function WORKER()
    return true
end
function WORK_BOAT()
    return has("Sailing")
end
function MISSILE_CRUISER()
    return has("Robotics")
end
function NUCLEAR_SUBMARINE()
    return has("Telecommunications")
end
function CARRIER()
    return has("Electronics")
end
function BATTLESHIP()
    return OIL() and has("Electronics")
end
function SUBMARINE()
    return OIL() and has("Refrigeration")
end
function DESTROYER()
    return has("Combustion")
end
function IRONCLAD()
    return COAL() and has("Steam_Power")
end
function FRIGATE()
    return IRON() and has("Navigation")
end
function CARAVEL()
    return has("Astronomy")
end
function TRIREME()
    return has("Sailing")
end
function GIANT_DEATH_ROBOT()
    return URANIUM() and has("Nuclear_Fusion")
end
function NUCLEAR_MISSILE()
    return MANHATTEN_PROJECT() and URANIUM() and has("Advanced_Ballistics")
end
function STEALTH_BOMBER()
    return ALUMINUM() and has("Stealth")
end
function JET_FIGHTER()
    return ALUMINUM() and has("Lasers")
end
function GUIDED_MISSILE()
    return has("Advanced_Ballistics")
end
function MODERN_ARMOR()
    return ALUMINUM() and has("Lasers")
end
function HELICOPTER_GUNSHIP()
    return ALUMINUM() and has("Computers")
end
function MOBILE_SAM()
    return has("Rocketry")
end
function ROCKET_ARTILLERY()
    return ALUMINUM and has("Rocketry")
end
function MECHANIZED_INFANTRY()
    return has("Mobile_Tactics")
end
function ATOMIC_BOMB()
    return MANHATTEN_PROJECT() and URANIUM() and has("Nuclear_Fission")
end
function BOMBER()
    return OIL() and has("Radar")
end
function FIGHTER()
    return OIL() and has("Radar")
end
function PARATROOPER()
    return has("Radar")
end
function TANK()
    return OIL() and has("Combined_Arms")
end
function ARTILLERY()
    return has("Dynamite")
end
function ANTI_AIRCRAFT_GUN()
    return has("Ballistics")
end
function ANTI_TANK_GUN()
    return has("Combined_Arms")
end
function INFANTRY()
    return has("Plastics")
end
function CAVALRY()
    return HORSE() and has("Military_Science")
end
function RIFLEMAN()
    return has("Rifling")
end
function LANCER()
    return HORSE() and has("Metallurgy")
end
function CANNON()
    return has("Chemistry")
end
function MUSKETMAN()
    return has("Gunpowder")
end
function LONGSWORDSMAN()
    return IRON() and has("Steel")
end
function TREBUCHET()
    return has("Physics")
end
function KNIGHT()
    return HORSE() and has("Chivalry")
end
function CROSSBOWMAN()
    return has("Machinery")
end
function PIKEMAN()
    return has("Civil_Service")
end
function LANDSKNECHT()
    return has("Civil_Service") and has("Mercenary_Army")
end
function CATAPULT()
    return has("Mathematics")
end
function HORSEMAN()
    return HORSE() and has("Horseback_Riding")
end
function SWORDSMAN()
    return IRON() and has("Iron_Working")
end
function CHARIOT_ARCHER()
    return HORSE() and has("The_Wheel")
end
function SPEARMAN()
    return has("Bronze_Working")
end
function ARCHER()
    return has("Archery")
end
function SCOUT()
    return true
end
function WARRIOR()
    return true
end
function COMPOSITE_BOWMAN()
    return has("Construction")
end
function GALLEASS()
    return has("Compass")
end
function GREAT_WAR_INFANTRY()
    return has("Replaceable_Parts")
end
function MARINE()
    return has("Penicillin")
end
function TRIPLANE()
    return OIL() and has("Flight")
end
function GREAT_WAR_BOMBER()
    return OIL() and has("Flight")
end
function LANDSHIP()
    return OIL() and has("Combustion")
end
function MACHINE_GUN()
    return has("Ballistics")
end
function PRIVATEER()
    return has("Navigation")
end
function GATLING_GUN()
    return has("Industrialization")
end
function CARGO_SHIP()
    return has("Sailing")
end
function CARAVAN()
    return has("Animal_Husbandry")
end
function ARCHAEOLOGIST()
    return UNIVERSITY() and has("Archeaology")
end
function BAZOOKA()
    return has("Nuclear_Fission")
end
function XCOM_SQUAD()
    return has("Nanotechnology")
end

-- promotion class functions

function COMBATCLASS(class)
    if class == "Archer" then
        return ARCHER() or BAZOOKA() or CHARIOT_ARCHER() or COMPOSITE_BOWMAN() or CROSSBOWMAN() or GATLING_GUN() or MACHINE_GUN()
    end
    if class == "Armor" then
        return GIANT_DEATH_ROBOT() or LANDSHIP() or MODERN_ARMOR() or TANK()
    end
    if class == "Bomber" then
        return BOMBER() or GREAT_WAR_BOMBER() or STEALTH_BOMBER()
    end
    if class == "Carrier" then
        return CARRIER()
    end
    if class == "Fighter" then
        return FIGHTER() or JET_FIGHTER() or TRIPLANE()
    end
    if class == "Gun" then
        return ANTI_AIRCRAFT_GUN() or ANTI_TANK_GUN() or GREAT_WAR_INFANTRY() or INFANTRY() or MARINE() or MECHANIZED_INFANTRY() or MOBILE_SAM() or MUSKETMAN() or PARATROOPER() or RIFLEMAN() or XCOM_SQUAD()
    end
    if class == "Heli" then
        return HELICOPTER_GUNSHIP()
    end
    if class == "Melee" then
        return LANDSKNECHT() or LONGSWORDSMAN() or PIKEMAN() or SPEARMAN() or SWORDSMAN() or WARRIOR()
    end
    if class == "Mounted" then
        return CAVALRY() or HORSEMAN() or KNIGHT() or LANCER()
    end
    if class == "NavalM" then
        return CARAVEL() or DESTROYER() or IRONCLAD() or PRIVATEER() or TRIREME()
    end
    if class == "NavalR" then
        return BATTLESHIP() or FRIGATE() or GALLEASS() or MISSILE_CRUISER()
    end
    if class == "Recon" then
        return SCOUT()
    end
    if class == "Siege" then
        return ARTILLERY() or CANNON() or CATAPULT() or ROCKET_ARTILLERY() or TREBUCHET()
    end
    if class == "Sub" then
        return NUCLEAR_SUBMARINE() or SUBMARINE()
    end
end
