# Cj_Butcher
Butcher Job FIVEM

Used for ox_inventory

### What do I need?
There are 3 dependencies needed to make sure the script runs smoothly:

- [ox-lib](https://github.com/overextended/ox_lib/releases/)
- [ox-inventory](https://github.com/overextended/ox_inventory/)
- [ox-target](https://github.com/overextended/ox_target)

### Installation
- Drag and drop the images into ox_inventory: [ox_inventory\web\images]
- Copy and paste the items into ox_inventory: [ox_inventory\data\items.lua]

### Resmon
Start up: ~0.1/ms

In use: ~0.1/ms

Idle: 0.00/ms

```LUA
	["pisau_jagalayam"] = {
		label = "Butcher Knife",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "butcherknife.png",
		}
	},

	["ayam_hidup"] = {
		label = "Fresh Chicken",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "freshchicken.png",
		}
	},

	["ayam_tanpa_bulu"] = {
		label = "Plucked Chicken",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "pluckedchicken.png",
		}
	},
	
	["ayam_proses"] = {
		label = "Processed Chicken",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "processedchicken.png",
		}
	},
	
	["kemasan_dada_ayam"] = {
		label = "Chicken Breast",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "chickenbreast.png",
		}
	},
	["kemasan_paha_ayam"] = {
		label = "Chicken Thighs",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "chickenthighs.png",
		}
	},
	["kemasan_sayap_ayam"] = {
		label = "Chicken Wings",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "chickenwings.png",
		}
	},
```
