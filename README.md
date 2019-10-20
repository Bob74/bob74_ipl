# Fix Holes In The Map (Updated to After Hours DLC)

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

## What's Missing
>Finance & Felony:
> - Warehouses
>
> Gunrunning:
> - Mobile Operation Center
>
> Doomsday Heist:
> - Facility: emblem, screens
> - Avenger interior
> - Silo interior
> - Base interior
>
> After Hours:
> - Basement
> - Terrorbyte

## Changelog

<details><summary>Click to view</summary>
(DD/MM/YYYY)

20/10/2019 - 2.0.8
- Nightclubs: Added dry ice emitters
- Heist & Gunrunning: Added water to the yachts hot tubs (to enable/disable)
- Offices: Added a way to open and close the safes
- Facility: Added privacy glass
- Moved Bahama Mamas and PillBox Hospital in their own files
- Fixed error `ReleaseNamedRendertarget`
- Cleaned and optimized the code

22/03/2019 - 2.0.7c
- CEO Offices: Changed the default loaded garage to ImportCEOGarage4.Part.Garage2 in order to avoid Office glitchs

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
- Fixed a typo which prevent the printers, security stuff and cash piles to spawn in the counterfeit cash factory

10/11/2018 - 2.0.4
- Fixed an issue where the clubhouse2 lower walls wouldn’t be colored on the first resource start
- Fixed gang members names using an old format
- Disabled the Mod shop from CEO garage 3 (ImportCEOGarage3) because it is overlaping with CEO office 3 (FinanceOffice3)

- 08/11/2018 - 2.0.3
Added biker gang’s name, missions and members pictures
- Added CEO office organization’s name

05/11/2018 - 2.0.1
- Removed overlaping Zancudo River
- Added the trailer near Zancudo River

04/11/2018 - 2.0.0
- Plugin totaly rewritten
- Support for all DLC (up to The Doomsday Heist)
- Ability to easily customize story mode and online purchasable interiors
- You can still use it as it is if you want ipl and interiors to be loaded, the plugin sets a default style for each ones
- Check out the Wiki to find out how: https://github.com/Bob74/bob74_ipl/wiki

26/06/2017
- Added optional IPL
- Bunkers exteriors (enabled)
- Bunkers interior
- CEO Offices
- Bikers places (some are still buggy)
- Import/Export locations
- Removed the trick to open Lost’s safehouse since last update already opens it

19/06/2017
- Fix hole in Zancudo River
- Fix hole in Cassidy Creek
- Add optional graffitis on some billboards (enabled by default)
- Opened Lost’s safehouse interior

14/06/2017
- Original release
</details>
