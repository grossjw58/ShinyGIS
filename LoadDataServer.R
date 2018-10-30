##library(maptools)
LoadData=function(input,output,session){
  userFile=reactive({
    # If no file is selected, don't do anything
    validate(need(input$inputFile,message="Select a Data set!"))
    input$inputFile
  })
  eventReactive(input$loadDataButton,{
    list("name"=userFile()$name,"data"=read.csv(userFile()$datapath,header=input$header_csv,sep=input$sep_csv,quote=input$quote_csv,stringsAsFactors = input$saf_csv))
  })
}