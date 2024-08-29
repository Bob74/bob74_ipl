# Fix holes and customize the map (Updated to Bottom Dollar Bounties DLC)

The purpose of this script is to fix the holes in the map by loading zones that aren’t loaded by default. I’ve added quite a lot of places to load, based on [Mikeeh’s script](https://forum.fivem.net/t/release-load-unloaded-ipls/5911). If you just want to fix the holes in the map, then use this resource as provided.

This resource has been completely rewritten from scratch since v2.0. You can customize almost every storymode and online purchasable interiors from your own resources.

## Download
- Latest version: https://github.com/Bob74/bob74_ipl/releases/latest

- Source code: https://github.com/Bob74/bob74_ipl

## [Wiki](https://github.com/Bob74/bob74_ipl/wiki)
- The Wiki has been created to help you customize your interiors as you wish. It contains every function you can use for each interior.
- Each Wiki page has an example at the bottom of the page to show how you can use it in your own resource.
- Also at the bottom of the Wiki will show you the default values set by `IPL_NAME.LoadDefault()`.

## Install
1. Download the [latest version](https://github.com/Bob74/bob74_ipl/releases/latest).
2. Extract `bob74_ipl.zip` and copy the `bob74_ipl` into your `resources` folder.
3. Add `start bob74_ipl` to your your `server.cfg` file.

## Screenshots
- [After Hours Album](https://imgur.com/a/Qg96l0D)
- [Misc. Album](https://imgur.com/a/cs9Ip4d)
- [IPL Fix Album](https://imgur.com/a/1Sfl4)

## Changelog

<details><summary>Click to view</summary>
(DD/MM/YYYY)

---
24/08/2024 - 2.3.2
- Added Kosatka and "The Music Locker" interiors.
- Removed `Citizen` prefix from code.

10/08/2024 - 2.3.1
- Fix world not rendering when inside security offices
- Fix typos in "Los Santos Tuners" files

02/07/2024 - 2.3.0
- Added "Bottom Dollar Bounties" support

14/04/2024 - 2.2.1
- Allow disabling San Andreas Mercenaries fixes
- Allow setting base game cargo ship as sunk
- Rename `ChopShopSalvage.Ipl.Load()` to `ChopShopSalvage.Ipl.Exterior.Load()`
- Rename `DrugWarsFreakshop.Ipl.Load()` to `DrugWarsFreakshop.Ipl.Exterior.Load()`
- Rename `DrugWarsGarage.Ipl.Load()` to `DrugWarsGarage.Ipl.Exterior.Load()`

06/04/2024 - 2.2.0
- Added "Los Santos Drug Wars" support
- Added "San Andreas Mercenaries" support
- Added "The Chop Shop" support
- Added missing base IPLs

27/03/2024 - 2.1.4
- North Yankton improvements (https://github.com/Bob74/bob74_ipl/pull/131 @TheIndra55)

05/12/2023 - 2.1.3
- Added missing train track near Davis Quartz (https://github.com/Bob74/bob74_ipl/pull/129 @TheIndra55)

10/01/2023 - 2.1.2
- Fix native and update native names (@NeenGame )

24/10/2022 - 2.1.1
- Fix vespucci beach wall hole
- Fix Boat House Door in Sandy Shores
- Fix GTA 5 24/7 Roof in Sandy Shores
- Fix Industrial Building near Lesters Warehouse
- Fix Collision Holes near Lost MC compound

11/10/2022 - 2.1.0a
- Make Doomsday Facility Objects non network

03/08/2022 - 2.1.0
- Added "The Criminal Enterprises" support

02/05/2022 - 2.0.15
- Reformatted code
- Removed unused .gitignore
- Bumped version in fxmanifest.lua
- Improved performance

21/04/2022 - 2.0.14
- Fix casino penthouse carpet patterns colors

12/02/2022 - 2.0.13a
- Fix Music Roof

12/02/2022 - 2.0.13
- Added Contract IPLs: Garage, Studio, Offices, Music Roof, Billboards

10/02/2022 - 2.0.12
- Fix FIB roof

07/02/2022 - 2.0.11
- Added Tuners IPLs: Garage, Meth Lab, Meetup

18/01/2022 - 2.0.10b
- Change water in yachts to be non-networked.

01/08/2021 - 2.0.10a
- Improved performance
- Fixed hole in the FIB fountain
- Fixed error appearing if casino IPL is loaded, but the game build is not sufficient
- Fixed a few typos in the README file

19/07/2021 - 2.0.10
- Added Diamond Casino IPLs: Casino, Garage, VIP garage, Penthouse
- Import: Forced refresh of CEO Garages
- Updated fxmanifest fx_version to cerulean
- Updated IPL list link in fxmanifest nad removed outdated Props list and Interior ID list
- Fixed export typo in `michael.lua`
- Removed unnecessary space in north_yankton IPL

27/05/2020 - 2.0.9a
- Fixed disabling Pillbox Hospital
- Fixed `ResetInteriorVariables`

23/04/2020 - 2.0.9
- Replaced deprecated __resource.lua with fxmanifest.lua
- Added ferris wheel on the Del Perro Pier
- Reformatted client.lua

20/10/2019 - 2.0.8
- Nightclubs: Added dry ice emitters
- Heist & Gunrunning: Added water to the yachts hot tubs (to enable/disable)
- Offices: Added a way to open and close the safes
- Facility: Added privacy glass
- Moved Bahama Mamas and PillBox Hospital in their own files
- Fixed error `ReleaseNamedRendertarget`
- Cleaned and optimized the code

22/03/2019 - 2.0.7c
- CEO Offices: Changed the default loaded garage to ImportCEOGarage4.Part.Garage2 in order to avoid Office glitches

15/01/2019 - 2.0.7b
- Nightclubs: Fixed a typo for the fake lights

15/01/2019 - 2.0.7a
- Nightclubs: Added the ability to set no podium (using `AfterHoursNightclubs.Interior.Podium.none`)

14/01/2019 - 2.0.7
- Changed the way Trevor’s trailer is handled and added a Wiki entry.
- Added a way to open or close Zancudo’s gates with a Wiki entry.

12/01/2019 - 2.0.6
- Added nightclubs interior and exteriors
- Removed Zancudo gates by default (file bob74_ipl/gtav/base.lua: RequestIpl("CS3_07_MPGates") is now commented)

29/12/2018 - 2.0.5a
- Fixed the name of the BikerClubhouse1 export

19/12/2018 - 2.0.5
- Fixed a typo that prevents the printers, security stuff, and cash piles to spawn in the counterfeit cash factory

10/11/2018 - 2.0.4
- Fixed an issue where the clubhouse2 lower walls wouldn’t be colored on the first resource start
- Fixed gang members names using an old format
- Disabled the Mod shop from CEO garage 3 (ImportCEOGarage3) because it is overlapping with CEO office 3 (FinanceOffice3)

08/11/2018 - 2.0.3
- Added biker gang’s name, missions, and members pictures
- Added CEO office organization’s name

05/11/2018 - 2.0.1
- Removed overlapping Zancudo River
- Added the trailer near Zancudo River

04/11/2018 - 2.0.0
- Plugin totally rewritten
- Support for all DLC (up to The Doomsday Heist)
- Ability to easily customize story mode and online purchasable interiors
- You can still use it as it is if you want IPL and interiors to be loaded, the plugin sets a default style for each one
- Check out the Wiki to find out how: https://github.com/Bob74/bob74_ipl/wiki

26/06/2017
- Added optional IPL
- Bunkers exteriors (enabled)
- Bunkers interior
- CEO Offices
- Bikers places (some are still buggy)
- Import/Export locations
- Removed the trick to open Lost’s safehouse since the last update already opens it

19/06/2017
- Fix hole in Zancudo River
- Fix hole in Cassidy Creek
- Add optional graffiti on some billboards (enabled by default)
- Opened Lost’s safehouse interior

14/06/2017
- Original release
</details>
