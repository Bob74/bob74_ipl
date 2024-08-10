local _scanDelay = 500

CreateThread(function()
    while true do
        Global.currentInteriorId = GetInteriorFromEntity(PlayerPedId())

        if Global.currentInteriorId == 0 then
            Global.ResetInteriorVariables()
        else
            -- Setting variables

            -- GTA Online
            Global.Online.isInsideApartmentHi1 = (Global.currentInteriorId == GTAOApartmentHi1.interiorId)
            Global.Online.isInsideApartmentHi2 = (Global.currentInteriorId == GTAOApartmentHi2.interiorId)
            Global.Online.isInsideHouseHi1 = (Global.currentInteriorId == GTAOHouseHi1.interiorId)
            Global.Online.isInsideHouseHi2 = (Global.currentInteriorId == GTAOHouseHi2.interiorId)
            Global.Online.isInsideHouseHi3 = (Global.currentInteriorId == GTAOHouseHi3.interiorId)
            Global.Online.isInsideHouseHi4 = (Global.currentInteriorId == GTAOHouseHi4.interiorId)
            Global.Online.isInsideHouseHi5 = (Global.currentInteriorId == GTAOHouseHi5.interiorId)
            Global.Online.isInsideHouseHi6 = (Global.currentInteriorId == GTAOHouseHi6.interiorId)
            Global.Online.isInsideHouseHi7 = (Global.currentInteriorId == GTAOHouseHi7.interiorId)
            Global.Online.isInsideHouseHi8 = (Global.currentInteriorId == GTAOHouseHi8.interiorId)
            Global.Online.isInsideHouseLow1 = (Global.currentInteriorId == GTAOHouseLow1.interiorId)
            Global.Online.isInsideHouseMid1 = (Global.currentInteriorId == GTAOHouseMid1.interiorId)

            -- DLC: High life
            Global.HighLife.isInsideApartment1 = (Global.currentInteriorId == HLApartment1.interiorId)
            Global.HighLife.isInsideApartment2 = (Global.currentInteriorId == HLApartment2.interiorId)
            Global.HighLife.isInsideApartment3 = (Global.currentInteriorId == HLApartment3.interiorId)
            Global.HighLife.isInsideApartment4 = (Global.currentInteriorId == HLApartment4.interiorId)
            Global.HighLife.isInsideApartment5 = (Global.currentInteriorId == HLApartment5.interiorId)
            Global.HighLife.isInsideApartment6 = (Global.currentInteriorId == HLApartment6.interiorId)

            -- DLC: Bikers - Clubhouses
            Global.Biker.isInsideClubhouse1 = (Global.currentInteriorId == BikerClubhouse1.interiorId)
            Global.Biker.isInsideClubhouse2 = (Global.currentInteriorId == BikerClubhouse2.interiorId)

            -- DLC: Finance & Felony - Offices
            Global.FinanceOffices.isInsideOffice1 = (Global.currentInteriorId == FinanceOffice1.currentInteriorId)
            Global.FinanceOffices.isInsideOffice2 = (Global.currentInteriorId == FinanceOffice2.currentInteriorId)
            Global.FinanceOffices.isInsideOffice3 = (Global.currentInteriorId == FinanceOffice3.currentInteriorId)
            Global.FinanceOffices.isInsideOffice4 = (Global.currentInteriorId == FinanceOffice4.currentInteriorId)

            -- DLC: The Contract
            Global.Security.isInsideOffice1 = (Global.currentInteriorId == MpSecurityOffice1.InteriorId)
            Global.Security.isInsideOffice2 = (Global.currentInteriorId == MpSecurityOffice2.InteriorId)
            Global.Security.isInsideOffice3 = (Global.currentInteriorId == MpSecurityOffice3.InteriorId)
            Global.Security.isInsideOffice4 = (Global.currentInteriorId == MpSecurityOffice4.InteriorId)
        end

        Wait(_scanDelay)
    end
end)
