Config = {}



Config.Locale = 'en'
Config.ItemTester = 'alcotester'
Config.Status = true 

-- Made By Mr.lua#0001 Open Source
Config.EatButton = 38
Config.FoodThrow = 105
Config.ServeFood = 10
Config.FoodSmallRemove = {min = 17, max = 30} 
Config.FoodBigRemove = {min = 30, max = 50} 

Config.Food = {
    {Item = "burger",  Label = 'Hamburger', g = 220, Prop = "prop_cs_burger_01", StatusHunger = 50000, Pos1 = 0.13, Pos2 = 0.05, Pos3 = 0.02, Pos4 = -50.0, Pos5 = 16.0, Pos6 = 60.0}, 
    {Item = "chaser",  Label = 'Chaser Choco Bar', g = 70, Prop = "prop_choc_ego", StatusHunger = 50000, Pos1 = 0.13, Pos2 = 0.05, Pos3 = 0.02, Pos4 = 50.0, Pos5 = 30.0, Pos6 = 260.0},
    {Item = "meteorite", Label = 'Meteorite Choco Bar', g = 80, Prop = "prop_choc_meto", StatusHunger = 50000, Pos1 = 0.13, Pos2 = 0.05, Pos3 = 0.02, Pos4 = 50.0, Pos5 = 30.0, Pos6 = 260.0},
    {Item = "hotdog",  Label = 'Hotdog', g = 120, Prop = "prop_cs_hotdog_01", StatusHunger = 50000, Pos1 = 0.13, Pos2 = 0.05, Pos3 = 0.02, Pos4 = 0.0, Pos5 = -140.0, Pos6 = -140.0},
    {Item = "taco",  Label = 'Taco', g = 180, Prop = "prop_taco_01", StatusHunger = 50000, Pos1 = 0.13, Pos2 = 0.05, Pos3 = 0.02, Pos4 = 0.0, Pos5 = -140.0, Pos6 = -140.0},
}


Config.DrinkingButton = 38
Config.DrinkThrowButton = 105
Config.ServeDrink = 10
Config.SplitDrinkButton = 317
Config.CleanUpItem = 317
Config.DrinkSmallRemove = {min = 17, max = 30} 
Config.DrinkBigRemove = {min = 35, max = 80} 


Config.Drink = {
  
    {Item = "piswasser",  CleanUpItem = '', ml = 500, Prop = "prop_amb_beer_bottle", StatusDrink = 10000, Alcohol = 0.0359949, Shots = false , Pos1 = 0.0, Pos2 = -0.02, Pos3 = -0.01, Pos4 = 18.0, Pos5 = -10.0, Pos6 = 0.0},

    {Item = "mount_whisky",  CleanUpItem = 'shot_mount_whisky', ml = 500, Prop = "prop_whiskey_bottle", StatusDrink = 10000, Alcohol = 0.0759949, Shots = true, Pos1 = 0.0, Pos2 = -0.02, Pos3 = -0.17, Pos4 = 0.2, Pos5 = -06.0, Pos6 = 0.0},
     
    {Item = "tequila",  CleanUpItem = 'shot_tequila', ml = 500, Prop = "prop_tequila_bottle", StatusDrink = 10000, Alcohol = 0.0959949, Shots = true, Pos1 = 0.0, Pos2 = -0.02, Pos3 = -0.23, Pos4 = 0.2, Pos5 = -06.0, Pos6 = 0.0},

    {Item = "nogo_vodka",  CleanUpItem = 'shot_nogo_vodka', ml = 500, Prop = "prop_vodka_bottle", StatusDrink = 10000, Alcohol = 0.0859949, Shots = true, Pos1 = 0.0, Pos2 = -0.02, Pos3 = -0.28, Pos4 = 0.2, Pos5 = -06.0, Pos6 = 0.0},

    {Item = "raine",  CleanUpItem = '', ml = 250, Prop = "ba_prop_club_water_bottle", StatusDrink = 10000, Alcohol = 0.0, Shots = false, Pos1 = 0.02, Pos2 = -0.01, Pos3 = -0.14, Pos4 = 0.2, Pos5 = -06.0, Pos6 = 0.0},

    {Item = "bean_machine_coffe",  CleanUpItem = '', ml = 250, Prop = "p_ing_coffeecup_01", StatusDrink = 10000, Alcohol = 0.0, Shots = false, Pos1 = 0.0, Pos2 = -0.01, Pos3 = -0.02, Pos4 = 05.0, Pos5 = -10.0, Pos6 = 0.0},

    {Item = "sprunk",  CleanUpItem = '', ml = 330, Prop = "v_res_tt_can03", StatusDrink = 10000, Alcohol = 0.0, Shots = false, Pos1 = 0.0, Pos2 = -0.01, Pos3 = -0.02, Pos4 = 05.0, Pos5 = -10.0, Pos6 = 0.0},

    {Item = "cola",  CleanUpItem = '', ml = 330, Prop = "prop_ecola_can", StatusDrink = 10000, Alcohol = 0.0, Shots = false, Pos1 = 0.0, Pos2 = -0.01, Pos3 = -0.02, Pos4 = 05.0, Pos5 = -10.0, Pos6 = 0.0},
}

Config.DrinkShot = { 
    {Item = "shot_mount_whisky",  Label = 'Panak Mount Whisky', mlshot = 30, StatusDrink = 10000, Alcohol = 0.0759949},

    {Item = "shot_nogo_vodka",  Label = 'Panak Nogo Vodka', mlshot = 30, StatusDrink = 10000, Alcohol = 0.0859949},
     
    {Item = "shot_tequila",  Label = 'Panak Tequilya', mlshot = 30, StatusDrink = 10000, Alcohol = 0.0959949},
}


Config.Wine = {
    {Item = "costa_del_perro",  CleanUpItem = 'glass_costa_del_perro', ml = 500, Prop = "prop_wine_bot_01", Alcohol = 0.0759949, StatusDrink = 10000, Pos1 = 0.02, Pos2 = -0.009, Pos3 = -0.26, Pos4 = 05.0, Pos5 = -10.0, Pos6 = 25.0},

    {Item = "rockford_hill",  CleanUpItem = 'glass_rockford_hill', ml = 500, Prop = "prop_wine_bot_02", Alcohol = 0.0759949, StatusDrink = 10000, Pos1 = 0.0, Pos2 = -0.01, Pos3 = -0.28, Pos4 = 0.2, Pos5 = -03.0, Pos6 = 0.0},
     
    {Item = "vinewood_red",  CleanUpItem = 'glass_vinewood_red', ml = 500, Prop = "prop_wine_rose", Alcohol = 0.0759949, StatusDrink = 10000, Pos1 = 0.0, Pos2 = -0.009, Pos3 = -0.29, Pos4 = 0.2, Pos5 = -06.0, Pos6 = 0.0},

    {Item = "vinewood_blanc",  CleanUpItem = 'glass_vinewood_blanc', ml = 500, Prop = "prop_wine_white", Alcohol = 0.0759949, StatusDrink = 10000, Pos1 = 0.0, Pos2 = -0.02, Pos3 = -0.28, Pos4 = 0.2, Pos5 = -03.0, Pos6 = 0.0},

}

Config.WineGlass = { 
    {Item = "glass_costa_del_perro",  Label = 'Glass Costa Del Perro', mlwine = 100, Alcohol = 0.0759949, StatusDrink = 10000},

    {Item = "glass_rockford_hill",  Label = 'Glass Rockford Hill Reserve', mlwine = 100, Alcohol = 0.0759949, StatusDrink = 10000},
     
    {Item = "glass_vinewood_red",  Label = 'Glass Vinewood Red Zinfadel', mlwine = 100, Alcohol = 0.0759949, StatusDrink = 10000},

    {Item = "glass_vinewood_blanc",  Label = 'Glass Vinewood Sauvignon Blanc', mlwine = 100, Alcohol = 0.0759949, StatusDrink = 10000},
}