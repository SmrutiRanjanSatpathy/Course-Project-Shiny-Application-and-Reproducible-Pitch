#This application allow the user to enter the length, breadth, and height 
#and calculate the volume and surface area of cuboid. Three text box are created 
#to enter length, breadth, height and calculations for Volume and Surface Area
#are done in the serevr.R 



shinyUI(pageWithSidebar(
  headerPanel("To Calculate Volume and Surface Area of Cuboid"),
  sidebarPanel(
    
    textInput(inputId='length','Enter Length', value='0'),
    textInput(inputId='breadth','Enter Breadth', value='0'),
    textInput(inputId='height','Enter Height', value='0'),
    dateInput("date","Date:")
    
  ),
  mainPanel(h2('Calculating Volume and Surface Area'),
            h4('Volume is'),
            verbatimTextOutput("oid1"),
            h4('Surface Area'),
            verbatimTextOutput("oid2"),
            h4('Today Date is'),
            verbatimTextOutput("odate")
            #             plotOutput('newHist')
            #             
  )))