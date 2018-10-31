RegressionServer=function(input,output,session,dataNames,dataList){
  # depVar=NULL
  # indVars=NULL
  # activeDataName=NULL
  # activeDataSet=NULL
  # 
  # userDataSet=reactive({
  #   validate(need(input$dataSet,message="Select a Data set!"))
  #   input$dataSet
  # })
  # 
  # userVars=reactive({
  #   validate(need(c(input$indVar,input$depVar),message = "One or more variables not selected"))
  #   list(input$depVar,input$indVar)
  # })
  # 
  # observe({dataNames
  #   ch=reactiveValuesToList(dataNames, all.names = FALSE)
  #   updateSelectInput(session,"dataSet",
  #     choices=ch,
  #     selecte=head(ch,1)
  #   )
  # })
  # 
  # observeEvent(userDataSet(),{
  #   activeDataName<<-paste("\"",userDataSet(),"\"",sep="")
  #   activeDataSet<<-dataList[[activeDataName]]
  #   colNames=names(dataList[[activeDataName]])
  #   
  #   updateSelectInput(session,"depVar",
  #     choices=colNames,
  #     selecte=head(colNames,1)
  #   )
  #   updateSelectInput(session,"indVar",
  #     choices=colNames
  #   )
  # })
  # 
  # observeEvent(userVars(),{
  #   depVar<<-userVars()[[1]]
  #   indVars<<-userVars()[[2]]
  # })
  
  eventReactive(input$clickers,{
    print("Button has been pressed")
    #list("name"=userFile()$name,"data"=read.csv(userFile()$datapath,header=input$header_csv,sep=input$sep_csv,quote=input$quote_csv,stringsAsFactors = input$saf_csv))
  })
}