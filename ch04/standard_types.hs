--exercise 4.15 
data Season = Spring | Summer | Fall | Winter 
              deriving (Eq, Show, Ord)

data Temperature = Cold | Hot 
            deriving (Eq, Show, Ord)

seasonToTemperature :: Season -> Temperature
seasonToTemperature season 
                    | season == Spring || season == Summer = Hot
                    | otherwise = Cold

--exercise 4.16
data Month = January | February | March | April | May | June | July | August | September | October | November | December  
             deriving (Eq, Show, Ord)

monthToSeason :: Month -> Season
monthToSeason month
                | month == March || month == April || month == May = Spring
                | month == June || month == July || month == August = Summer
                | month == September || month == October || month == November = Fall
                | otherwise = Winter
