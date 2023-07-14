-- Resources:
-- **********
-- IPL list: https://wiki.rage.mp/index.php?title=Interiors_and_Locations

fx_version 'cerulean'
game 'gta5'

author 'Bob_74'
description 'Load and customize your map'
version '2.1.2'

lua54 "yes"

client_scripts {
    "lib/common.lua"
    , "lib/observers/interiorIdObserver.lua"
    , "lib/observers/officeSafeDoorHandler.lua"
    , "client.lua"

    -- GTA V
    , "gtav/base.lua"   -- Base IPLs to fix holes
    , "gtav/ammunations.lua"
    , "gtav/bahama.lua"
    , "gtav/floyd.lua"
    , "gtav/franklin.lua"
    , "gtav/franklin_aunt.lua"
    , "gtav/graffitis.lua"
    , "gtav/pillbox_hospital.lua"
    , "gtav/lester_factory.lua"
    , "gtav/michael.lua"
    , "gtav/north_yankton.lua"
    , "gtav/red_carpet.lua"
    , "gtav/simeon.lua"
    , "gtav/stripclub.lua"
    , "gtav/trevors_trailer.lua"
    , "gtav/ufo.lua"
    , "gtav/zancudo_gates.lua"

    -- GTA Online
    , "gta_online/apartment_hi_1.lua"
    , "gta_online/apartment_hi_2.lua"
    , "gta_online/house_hi_1.lua"
    , "gta_online/house_hi_2.lua"
    , "gta_online/house_hi_3.lua"
    , "gta_online/house_hi_4.lua"
    , "gta_online/house_hi_5.lua"
    , "gta_online/house_hi_6.lua"
    , "gta_online/house_hi_7.lua"
    , "gta_online/house_hi_8.lua"
    , "gta_online/house_mid_1.lua"
    , "gta_online/house_low_1.lua"

    -- DLC High Life
    , "dlc_high_life/apartment1.lua"
    , "dlc_high_life/apartment2.lua"
    , "dlc_high_life/apartment3.lua"
    , "dlc_high_life/apartment4.lua"
    , "dlc_high_life/apartment5.lua"
    , "dlc_high_life/apartment6.lua"

    -- DLC Heists
    , "dlc_heists/carrier.lua"
    , "dlc_heists/yacht.lua"

    -- DLC Executives & Other Criminals
    , "dlc_executive/apartment1.lua"
    , "dlc_executive/apartment2.lua"
    , "dlc_executive/apartment3.lua"

    -- DLC Finance & Felony
    , "dlc_finance/office1.lua"
    , "dlc_finance/office2.lua"
    , "dlc_finance/office3.lua"
    , "dlc_finance/office4.lua"
    , "dlc_finance/organization.lua"

    -- DLC Bikers
    , "dlc_bikers/cocaine.lua"
    , "dlc_bikers/counterfeit_cash.lua"
    , "dlc_bikers/document_forgery.lua"
    , "dlc_bikers/meth.lua"
    , "dlc_bikers/weed.lua"
    , "dlc_bikers/clubhouse1.lua"
    , "dlc_bikers/clubhouse2.lua"
    , "dlc_bikers/gang.lua"

    -- DLC Import/Export
    , "dlc_import/garage1.lua"
    , "dlc_import/garage2.lua"
    , "dlc_import/garage3.lua"
    , "dlc_import/garage4.lua"
    , "dlc_import/vehicle_warehouse.lua"

    -- DLC Gunrunning
    , "dlc_gunrunning/bunkers.lua"
    , "dlc_gunrunning/yacht.lua"

    -- DLC Smuggler's Run
    , "dlc_smuggler/hangar.lua"

    -- DLC Doomsday Heist
    , "dlc_doomsday/facility.lua"

    -- DLC After Hours
    , "dlc_afterhours/nightclubs.lua"

    -- DLC Diamond Casino (Requires forced build 2060 or higher)
    , "dlc_casino/casino.lua"
    , "dlc_casino/penthouse.lua"

    -- DLC Tuners (Requires forced build 2372 or higher)
    , "dlc_tuner/garage.lua"
    , "dlc_tuner/meetup.lua"
    , "dlc_tuner/methlab.lua"

    -- DLC The Contract (Requires forced build 2545 or higher)
    , "dlc_security/studio.lua"
    , "dlc_security/billboards.lua"
    , "dlc_security/musicrooftop.lua"
    , "dlc_security/garage.lua"
    , "dlc_security/office1.lua"
    , "dlc_security/office2.lua"
    , "dlc_security/office3.lua"
    , "dlc_security/office4.lua"

    -- DLC The Criminal Enterprises (Requires forced build 2699 or higher)
    , "gta_mpsum2/simeonfix.lua"
    , "gta_mpsum2/vehicle_warehouse.lua"
    , "gta_mpsum2/warehouse.lua"
}
