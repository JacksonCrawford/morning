# Morning!

This program is a Julia script that presents handy morning information such as:

- Days since the year started
- Actual Date (WIP)
- Weather
- Tea recommender (WIP)
- Calendar? (WIP)
- Joke of the Day (WIP)
- Top News Stories (WIP)

## Requirements

The program requires [Julia](www.julialang.org) in order to run, stored at /usr/local/bin/julia. If it is stored anywhere else, then specify the path to that location in line 1 of the program.

Other requirements include:

- [pyowm](https://pypi.org/project/pyowm/)
- [OpenWeatherMap API Key](https://openweathermap.org/)
  - [Instructions](https://openweathermap.force.com/s/article/how-to-get-api-key-2019-10-24-21-47-24)


## Installation

In order to make the script executable, save the file to your preferred location and then navigate to it using the terminal. Double check that you are in the correct directory (with ls), then enter the following and press Enter:

```chmod +x morning.sh```

Now, in order for the weather to be correct, you must enter your city and country name into their respective variables on lines 8 and 9. Then, paste your OpenWeatherMap API Key in places of the x's on line 11 (but still within the quotation marks).

Now just save your changes and exit your editor, and return to the terminal and run the following:

```./morning.jl```

This should have everything displayed! Enjoy!
