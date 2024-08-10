CreateThread(function()
    while true do
        local sleep = 500

        if Global.Security.isInsideOffice1 or Global.Security.isInsideOffice2 or Global.Security.isInsideOffice3 or Global.Security.isInsideOffice4 then
            sleep = 0

            if Global.Security.isInsideOffice1 then
                EnableExteriorCullModelThisFrame(`bh1_05_build1`)
                EnableExteriorCullModelThisFrame(`bh1_05_em`)
            end

            if Global.Security.isInsideOffice2 then
                EnableExteriorCullModelThisFrame(`hei_hw1_08_hotplaz01`)
                EnableExteriorCullModelThisFrame(`hw1_08_hotplaz_rail`)
                EnableExteriorCullModelThisFrame(`hw1_08_emissive_c`)
            end

            if Global.Security.isInsideOffice3 then
                EnableExteriorCullModelThisFrame(`hei_kt1_05_01`)
                EnableExteriorCullModelThisFrame(`kt1_05_glue_b`)
                EnableExteriorCullModelThisFrame(`kt1_05_kt_emissive_kt1_05`)
            end

            if Global.Security.isInsideOffice4 then
                EnableExteriorCullModelThisFrame(`hei_kt1_08_buildingtop_a`)
                EnableExteriorCullModelThisFrame(`hei_kt1_08_kt1_emissive_ema`)
            end

            DisableOcclusionThisFrame()
        end

        Wait(sleep)
    end
end)
