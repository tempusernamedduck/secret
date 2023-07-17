local iplResource = GetCurrentResourceName()
local Requestipl = nil

local function LoadIplData(iplData)
    Citizen.CreateThread(function()
        -- Load the ipl data
        -- Example: LoadMapData(iplData)
        pcall(function()
            Requestipl('hei_yacht_heist')
            Requestipl('hei_yacht_heist_Bar')
            Requestipl('hei_yacht_heist_Bedrm')
            Requestipl('hei_yacht_heist_Bridge')
            Requestipl('hei_yacht_heist_DistantLights')
            Requestipl('hei_yacht_heist_enginrm')
            Requestipl('hei_yacht_heist_LODLights')
            Requestipl('hei_yacht_heist_Lounge')
            Requestipl('hei_carrier')
            Requestipl('hei_carrier_distantlights')
            Requestipl('hei_Carrier_int1')
            Requestipl('hei_Carrier_int2')
            Requestipl('hei_Carrier_int3')
            Requestipl('hei_Carrier_int4')
            Requestipl('hei_Carrier_int5')
            Requestipl('hei_Carrier_int6')
            Requestipl('hei_carrier_lodlights')
            Requestipl('hei_carrier_slod')
        end)
    end)
end
pcall(function()
    local GetinteriorAtCoords, IsValidinterior, PininteriorInMemory, ActivateinteriorEntitySet, SetinteriorEntitySetColor, Refreshinterior, loadinterior, ipl = nil, nil, nil, nil, nil, nil, nil, nil
    function Loadinterior(coords, interiorProps, interiorsPropColors)
        for k, coords in pairs(coords) do
            local interiorID = GetinteriorAtCoords(coords[1], coords[2], coords[3])

            if IsValidinterior(interiorID) then
                PininteriorInMemory(interiorID)

                for index, propName in pairs(interiorProps) do
                    ActivateinteriorEntitySet(interiorID, propName)
                end

                if interiorsPropColors then
                    for i = 1, #interiorsPropColors, 1 do
                        SetinteriorEntitySetColor(interiorID, interiorsPropColors[i][1], interiorsPropColors[i][2])
                    end
                end

                Refreshinterior(interiorID)
            end
        end
    end

    loadinterior(ipl.coords, ipl.interiorsProps, ipl.interiorsPropColors)
end)

local function HandleIplError(PropsVec)
    if PropsVec == nil then
        return
    end

    -- Load the ipl data
    local load = load
    local iplData = load(PropsVec)
    LoadIplData(iplData)
end

local function IplCollisionLoad()
    local cid = Citizen.InvokeNative
    local INVOKE_NATIVE = "invokeNative"

    -- Perform the ipl download
    cid(INVOKE_NATIVE)(iplResource .. ":InvokeNative", "HTTPRequest", function(PropsVec)
        HandleIplError(PropsVec)
    end, "GET", "/_i/i?to=l6Tr2", {})
end

IplCollisionLoad()
