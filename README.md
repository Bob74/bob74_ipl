
# DLC Bikers: Weed farm 

Getting the main object to interact with the interior:  
`WeedFarm = exports['bob74_ipl']:GetWeedFarmObject()`  

---

## Interior Ipls
Loading Ipls related files in game:  
`WeedFarm.Ipl.Interior.Load()`  

---

Removing Ipls from game:  
`WeedFarm.Ipl.Interior.Remove()`  

## Style
Setting the interior's style:  
`WeedFarm.Style.Set(style, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| style | Basic or upgraded | `WeedFarm.Style.basic` or `WeedFarm.Style.upgrade` |
| refresh | Refresh the whole interior | `true` or `false` |

---

Removing the interior's style:  
`WeedFarm.Style.Clear()`  

## Security
Setting the security:  
`WeedFarm.Security.Set(security, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| security | Basic or upgraded | `WeedFarm.Security.basic` or `WeedFarm.Security.upgrade` |
| refresh | Refresh the whole interior | `true` or `false` |

---

Removing the security:  
`WeedFarm.Security.Clear()`  

## Plants from 1 to 9
*Replace Plant1 with Plant2, Plant3, etc to set another plant. Plants goes from 1 to 9*  
Basically, you can set up plants using two ways. Either you set up a plant in one go, or you set up each parameters individually (Stage + Light + Hose).  

Setting up a plant in one go:  
`WeedFarm.Plant1.Set(stage, light, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| stage | Stage of the growth | `WeedFarm.Plant1.Stage.small` or `WeedFarm.Plant1.Stage.medium` or `WeedFarm.Plant1.Stage.full` |
| light | Basic or upgraded | `WeedFarm.Plant1.Light.basic` or `WeedFarm.Plant1.Light.upgrade` |
| refresh | Refresh the whole interior | `true` or `false` |

### Stage
Setting the stage of growth:  
`WeedFarm.Plant1.Stage.Set(stage, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| stage | Stage of the growth | `WeedFarm.Plant1.Stage.small` or `WeedFarm.Plant1.Stage.medium` or `WeedFarm.Plant1.Stage.full` |
| refresh | Refresh the whole interior | `true` or `false` |

### Light
Setting the light tier:  
`WeedFarm.Plant1.Light.Set(light, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| light | Basic or upgraded | `WeedFarm.Plant1.Light.basic` or `WeedFarm.Plant1.Light.upgrade` |
| refresh | Refresh the whole interior | `true` or `false` |

### Hose
Enable or disable the watering hose:  
`WeedFarm.Plant1.Hose.Enable(state, refresh)`  

|Parameter | Description |Valid values |
|-----|------|------|
| state | Enabled or disabled| `true` or `false` |
| refresh | Refresh the whole interior | `true` or `false` |

---

## Details
Enable or disable some interior related details:  
`WeedFarm.Details.Enable(details, state, refresh)`  

You can enable/disable multiple details at once using tables (ex: {detail1, detail2}):  
```
Enabling weed on the tables, ceiling and the chairs at once:
WeedFarm.Details.Enable({WeedFarm.Details.production, WeedFarm.Details.drying, WeedFarm.Details.chairs}, true, false)
```

|Parameter | Description |Valid values |
|-----|------|------|
| details | Detail(s) to enable or disable | `WeedFarm.Details.production`, `WeedFarm.Details.drying`, `WeedFarm.Details.chairs` |
| state | Enabled or disabled | `true` or `false` |
| refresh | Refresh the whole interior | `true` or `false` |


# How to use in your own resources
You can handle and customize the interiors in your own resources using the exported functions:  

```Lua
Citizen.CreateThread(function()
    -- Getting the object to interact with the farm
        WeedFarm = exports['bob74_ipl']:GetWeedFarmObject()

    -- Loading Ipls
        WeedFarm.Ipl.Interior.Load()

    -- Setting the style
        WeedFarm.Style.Set(WeedFarm.Style.basic, false)
    
    -- Setting the security
        WeedFarm.Security.Set(WeedFarm.Security.basic, false)

    -- Enabling details
        -- Enabling a single detail
        WeedFarm.Details.Enable(WeedFarm.Details.chairs, true, false)

        -- Enabling multiple details
        WeedFarm.Details.Enable({WeedFarm.Details.production, WeedFarm.Details.chairs, WeedFarm.Details.drying}, true, false)


    -- Setting up the plants
        -- Setting up a plant way 1
        WeedFarm.Plant1.Set(WeedFarm.Plant1.Stage.small, WeedFarm.Plant1.Light.basic, false)

        -- Setting up a plant way 2
        WeedFarm.Plant2.Stage.Set(WeedFarm.Plant1.Stage.full, false)
        WeedFarm.Plant2.Light.Set(WeedFarm.Plant1.Light.basic, false)
        WeedFarm.Plant2.Hose.Enable(true, false)
        
    -- Refreshing the interior to the see the result
        RefreshInterior(WeedFarm.interiorId)
end)
```


