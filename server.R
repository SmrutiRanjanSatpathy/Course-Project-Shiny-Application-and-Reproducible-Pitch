shinyServer(
  function(input,output)
  {
    output$oid1<-renderText({as.numeric((input$length))*as.numeric((input$breadth))*as.numeric((input$height)) })
    output$oid2<-renderText({as.numeric(input$length)*as.numeric(input$breadth)+
        as.numeric(input$height)*as.numeric(input$breadth)+
        as.numeric(input$length)*as.numeric(input$height)})
    output$odate<-renderPrint({input$date})    
  })