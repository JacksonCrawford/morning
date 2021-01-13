#!/usr/local/bin/julia

using Dates
using PyCall

@pyimport pyowm

cityName = "charlotte"
countryName = "usa"

owm = pyowm.OWM("d06e4a0c6d304d44be567dd5ae91ca43")
wman = owm.weather_manager()

function getWeather(city, country)
        location = city * ", " * country
        observation = wman.weather_at_place(location).weather

        return observation.temperature("fahrenheit")
end

function weather()
        weather = getWeather(cityName, countryName)
        
        text = "This morning's temperature is currently " * string(weather["temp"]) * " degrees, with a high of " * string(weather["temp_max"]) * " and a low of " * string(weather["temp_min"]) * " going into the rest of the day."
        return text
        
end

function numDays()
        nDays = Dates.today() - Dates.Date(2020, 12, 31)
        text = "Good Morning Jackson, we are " * string(nDays) * " around the Sun."
        return text

end

function ascii()
        for i in 1:13
                print("    /\\    ")
        end
        println()
        for i in 1:13
                print("\\  /  \\  /")
        end
        println()
        for i in 1:13
                print(" \\/    \\/ ")
        end
        println()
        for i in 1:13
                print(" /      \\ ")
        end
        return ""
end

function main()
        println(numDays())
        println(weather())
        println(ascii())

end

main()
