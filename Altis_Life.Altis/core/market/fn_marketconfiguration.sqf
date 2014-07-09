life_market_resources = [		
	["oilp", 1960, 30, 3940, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["tabakp", 2730, 30, 5040, 4, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["bier", 2800, 30, 7000, 3, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["coal",1],
			["glass",1] 
		] 
	],
	["iron_r", 1700, 30, 3650, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["diamondc", 3000, 30, 8000, 5, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["copper_r", 990, 30, 3050, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["coal", 920, 30, 3050, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["tabakp",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["salt_r", 1235, 30, 3050, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1] 
		] 
	],
	["glass", 1500, 30, 5000, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["cement",1]
		] 
	],
	["cement", 920, 30, 3350, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["tabakp",1],
			["coal",1],
			["bier",1],
			["glass",1]
		] 
	],
	
	///////////////////////////////////
	["turtle", 12000, 20, 50000, 12, 9,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["uranp",1],
			["frogp",1],
			["heroinp",1]
		] 
	],
	["uranp", 3800, 20, 12000, 9, 8,
	    [ 
			["turtle",1], 
			["cocainep",1],
			["marijuana",1],
			["frogp",1],
			["heroinp",1]
		] 
	],
	["marijuana", 4200, 20, 7200, 7, 5,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["uranp",1],
			["frogp",1],
			["heroinp",1]
		] 
	],
	["cocainep", 5900, 20, 10300, 11, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["uranp",1],
			["frogp",1],
			["heroinp",1]
		] 
	],
	["frogp", 6100, 20, 11300, 7, 8,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["uranp",1],
			["heroinp",1]
		] 
	],
	["heroinp", 4900, 20, 10000, 11, 8,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["uranp",1],
			["frogp",1],
			["turtle",1]
		] 
	]
];
publicVariable "life_market_resources";
life_market_shortnames = []; //shortnames if in market

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
}
foreach life_market_resources;
publicVariable "life_market_shortnames";
life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
}
foreach life_market_resources;
publicVariable "life_market_prices";
systemChat "Market Prices Generated!";