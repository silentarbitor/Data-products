library(shiny)

shinyUI(
  pageWithSidebar(
    # Car MPG prediction from Weight
    headerPanel("Car MPG Prediction"),
    
    sidebarPanel(
      numericInput('weight', 'Enter the weight in lbs', 1000 , min = 0, step = 100),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of the prediction'),
      h4('You entered the following weight'),
      verbatimTextOutput("inputValue"),
      h4('Which results in the mpg of'),
      verbatimTextOutput("prediction")
    )
  )
)