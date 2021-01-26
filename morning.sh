#!/usr/local/bin/julia

using Dates
using PyCall

# Use Python's OpenWeatherMap library to get weather data
@pyimport pyowm

# Enter your name here
yourName = ""

# Enter your city and country name here (usa for U.S.A.)
cityName = ""
countryName = ""

# Paste your OWM API key here
owm = pyowm.OWM("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
wman = owm.weather_manager()

# Get weather data from OWM
function getWeather(city, country)
        location = city * ", " * country
        observation = wman.weather_at_place(location).weather

        return observation.temperature("fahrenheit")
end

# Return the weather
function weather()
        weather = getWeather(cityName, countryName)

        text = " This morning's temperature is currently " * string(weather["temp"]) * " degrees, with a high of " * string(weather["temp_max"]) * " and a low of " * string(weather["temp_min"]) * " going into the rest of the day."
        return text
end

# Get the number of days around the sun and the date
function numDays()
        today = Dates.today()
        nDays = today - Dates.Date(2020, 12, 31)
        text = "Good Morning $yourName, we are $nDays around the Sun, making today $today."
        return text
end

# Loops that print mountains
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

# Main function
function main()
        print(numDays())
        print(weather())
        println(ascii())
end

main()
