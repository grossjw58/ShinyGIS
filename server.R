#server.R
library(shiny)
source("LoadDataServer.R")
source("RegressionServer.R")
function(input,output){
  dataSetList=reactiveValues()
  dataNameList=reactiveValues()
  dataNameListReactive=reactive({dataNameList})
  data=callModule(LoadData,"data")
  
  observeEvent(data(),{
    temp=data()
    name=paste("\"",data()$name,"\"",sep="")
    dataSetList[[name]]=temp$data
    dataNameList[[name]]=temp$name
    appendTab("myTabs", tabPanel(data()$name, list(DT::renderDataTable(dataSetList[[name]]))), select=TRUE)
  })
  
  observe({dataNameList
    print("dataNameList has changed")
    print(reactiveValuesToList(dataNameList))
  })
  
  regression=callModule(RegressionServer,"regression",dataNames=dataNameList,dataList=dataSetList)
  print("it passed the regression function")
}