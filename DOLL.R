############Because free will is for losers###############
seed <- as.numeric(Sys.Date())
set.seed(seed)
library(RWeather)

#Check weather to see if it is raining
raintest <- getWeatherFromYahoo(location_id = "SNXX0006", units = "metric", message = TRUE)
badconditions <- c("Showers in the Vicinity","Light Rain Shower","Severe Thunderstorms","Thunderstorms","Showers","Haze","Isolated Thunderstorms","Scattered Thunderstorms","Scattered showers","Thundershowers")
currentcondition <- raintest$current_condition$condition$text
currentindex <- match(currentcondition,badconditions)

#Get the list of possible locations to eat depending on the weather
if(is.na(currentindex)== TRUE)
{
	Locations <- c("Science","YIH","Utown","Arts","Engineering/MacDonalds","Kent Ridge MRT","PGP","Mark's Mystery Place")
	print(Locations)
} else
{
	Locations <- c("Science","YIH","Utown","Kent Ridge MRT")
	print(Locations)
}

#Get a random location
lunchno <- length(Locations)
todayslunch <- sample(1:lunchno,1,replace = FALSE)
lunchlocation <- Locations[todayslunch]

#Pick 5 dictators randomly, or pseudorandomly or whatever.
People <- c("Yirong","Joel","Kristin","Jenny","Joash","Kee Pang","Ee Hui","Kiesha","Xiahong","Jonathan","Sheryl","Mark","Ken Wei","Antony")
pplno <- length(People)
People <- sample(People,pplno,replace = FALSE,prob = NULL)
todaysdictators <- sample(1:pplno,5,replace = FALSE)
dictatorsoftheday <- c(People[todaysdictators[1]],People[todaysdictators[2]],People[todaysdictators[3]],People[todaysdictators[4]],People[todaysdictators[5]])

#Output the weather, the random lunch location and the 5 dictators
currentcondition
lunchlocation
dictatorsoftheday