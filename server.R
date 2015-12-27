library(UsingR)
data("father.son")
data("cars")


shinyServer(

function(input,output)
{
  mu<-reactive({input$Mu})
  Id2<-reactive({input$Id2})
  output$oHist<-renderPlot({
    if(Id2()=="father.son")
    {
    hist(father.son$fheight, col = "cyan", xlab = "Son Height"
         , ylab = "Frequency", main = "Son's height Disribution")
    }
    else
    {
    hist(cars$dist, col = "light green", xlab = "Distiance covered by car"
           , ylab = "Frequency", main = "Distiance covered by car's Disribution")
    }
    lines(x=c(mu(),mu()),y=c(0,200),col="red",lwd=2)
    
    text(60,140,paste("Mean = ",mu()))
    })
  
  output$oRMSE<-renderPrint({sqrt(sum(father.son$fheight-mu())^2)})
  
  output$oTOL<-renderPrint({max(abs(father.son$fheight-mu()))})
  
  output$oMu<-renderPrint({mu()})
}
)