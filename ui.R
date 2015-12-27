library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Guess the Mean?"),
    sidebarPanel(
      dateInput("Id1","Today's Date:"),
      
      radioButtons("Id2","Dataset",c("father.son" = "father.son",
      "cars" = "cars"),selected = "father.son"),
      
      sliderInput("Mu","or Guess a Mean Value:",value=60,min=0,max=150,step=0.25)
    ),
    mainPanel(
      h4("Your Input Mean is:"),
      verbatimTextOutput("oMu"),
      
      h4("Root Mean Square Error is:"),
      verbatimTextOutput("oRMSE"),
      
      h4("Top Out layer distance is:"),
      verbatimTextOutput("oTOL"),
      
      plotOutput("oHist")
      
    )
  
  )
)