# UI for scatterplot
library(shiny)
library(tidyverse)
# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
  h1("MPG Dataset Exploration"),
  
  # Add a select input for the x variable
  selectInput("x_var", label = "X variable", 
              choices = select_values),
  
  # Add a select input for the y variable
  selectInput("y_var", label = "Y variable", 
              choices = select_values),
  

  # Add a sliderInput to set the size of each point
  sliderInput("size", "Size of point",min = 1, max = 10, value = 5, step = 1),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", label = "Color",
              choices = list("Red" = "red", "Blue" = "blue")),
  

  # Plot the output with the name "scatter"
  plotOutput("scatter")
)
shinyUI(ui)
