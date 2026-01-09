-- logic for recycling center logic skips

function canBuildHydroPlant()
    if has("Electricity") and has("Mining") then
        return AccessibilityLevel.Normal
    elseif has("Electricity") and has("Ecology") then
        return AccessibilityLevel.SequenceBreak
    else
        return AccessibilityLevel.None
    end
end

function canBuildSpaceFactory()
        if has("Electricity") and has("Robotics") and has("Industrialization") and has("Metal_Casting") and has("Mining") then
        return AccessibilityLevel.Normal
    elseif has("Ecology") and has("Robotics") and has("Industrialization") and has("Metal_Casting") and has("Mining") then
        return AccessibilityLevel.SequenceBreak
    else
        return AccessibilityLevel.None
    end
end

-- logic for World wonders that require Modern Era or Factories

function canBuildKremlin()
    if Tracker:FindObjectForCode("Prog_Era").CurrentStage >= 5 and has("Railroad") then
        return AccessibilityLevel.Normal
    elseif has("Railroad") and has("Industrialization") and has("Metal_Casting") and has("Mining") then
        return AccessibilityLevel.SequenceBreak
    else
        return AccessibilityLevel.None
    end
end

function canBuildProra()
    if Tracker:FindObjectForCode("Prog_Era").CurrentStage >= 5 and has("Flight") then
        return AccessibilityLevel.Normal
    elseif has("Flight") and has("Industrialization") and has("Metal_Casting") and has("Mining") then
        return AccessibilityLevel.SequenceBreak
    else
        return AccessibilityLevel.None
    end
end

function canBuildStatueLiberty()
    if Tracker:FindObjectForCode("Prog_Era").CurrentStage >= 5 and has("Replaceable_Parts") then
        return AccessibilityLevel.Normal
    elseif has("Replaceable_Parts") and has("Industrialization") and has("Metal_Casting") and has("Mining") then
        return AccessibilityLevel.SequenceBreak
    else
        return AccessibilityLevel.None
    end
end