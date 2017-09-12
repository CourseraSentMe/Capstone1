#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

library(shiny)


shinyUI(fluidPage(
  titlePanel("Text Prediction Web App"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("textA", "Input", 
                   value = "Type Text Here"),
      submitButton("Submit")
    ),
    
    mainPanel(
      h3("This is a text prediction web app."),
      textOutput("bg1"),
      textOutput("textA")
      )
    )
      ))
