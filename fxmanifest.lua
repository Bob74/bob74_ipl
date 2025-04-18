fx_version 'cerulean'
game 'gta5'

author 'Bob_74'
description 'Load and customize your map'
version '2.4.2'

lua54 "yes"

client_scripts {
    "lib/common.lua"
    , "lib/observers/interiorIdObserver.lua"
    , "lib/observers/officeSafeDoorHandler.lua"
    , "lib/observers/officeCullHandler.lua"
    , "client.lua"

    -- GTA V
    , "gtav/base.lua"   -- Base IPLs to fix holes
    , "gtav/ammunations.lua"
    , "gtav/bahama.lua"
    , "gtav/cargoship.lua"
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

    -- DLC Cayo Perico Heist (Requires forced build 2189 or higher)
    , "dlc_cayoperico/base.lua"
    , "dlc_cayoperico/nightclub.lua"
    , "dlc_cayoperico/submarine.lua"

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

    -- DLC Los Santos Drug Wars (Requires forced build 2802 or higher)
    , "dlc_drugwars/base.lua"
    , "dlc_drugwars/freakshop.lua"
    , "dlc_drugwars/garage.lua"
    , "dlc_drugwars/lab.lua"
    , "dlc_drugwars/traincrash.lua"

    -- DLC San Andreas Mercenaries (Requires forced build 2944 or higher)
    , "dlc_mercenaries/club.lua"
    , "dlc_mercenaries/lab.lua"
    , "dlc_mercenaries/fixes.lua"

    -- DLC The Chop Shop (Requires forced build 3095 or higher)
    , "dlc_chopshop/base.lua"
    , "dlc_chopshop/cargoship.lua"
    , "dlc_chopshop/cartel_garage.lua"
    , "dlc_chopshop/lifeguard.lua"
    , "dlc_chopshop/salvage.lua"

    -- DLC Bottom Dollar Bounties (Requires forced build 3258 or higher)
    , "dlc_bounties/base.lua"
    , "dlc_bounties/carrier.lua"
    , "dlc_bounties/office.lua"

    -- DLC Agents of Sabotage (Requires forced build 3407 or higher)
    , "dlc_agents/base.lua"
    , "dlc_agents/factory.lua"
    , "dlc_agents/office.lua"
    , "dlc_agents/airstrip.lua"
    , "dlc_agents/hangar_door.lua"
}
