library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)
library(DT)
library(jsonlite)
library(countrycode)

# Load data
data <- fromJSON("data_cia2.json")

# Get map shapes
world_map <- map_data("world")

# Match country names to ISO3 codes
world_map$ISO3 <- countrycode(world_map$region, origin = "country.name", destination = "iso3c")

