# library(DT)
# 
# DataPanelsUI=function(id){
#   ns=NS(id)
#   tagList(
#     ##panelSet to hold all the data that is added
#     ##tabsetPanel(ns("dataPanel"))
#     tabPanel(ns("dataPanel"),
#       DT::dataTableOutput(ns("dataTable"))
#     )
#   )
# }
# 
# AddDataPanel=function(input,output,session,dataTable){
#   tabIndex=reactiveVal(1)
#   observeEvent(dataTable(),{
#     tabIndex(tabIndex() + 1)
#     appendTab("myTabs", tabPanel(tabIndex(), list(DT::renderDataTable(dataTable()))), select=TRUE)
#   })
#   ##output$dataTable=DT::renderDataTable(dataTable())
#   ##appendTab("dataPanel", tabPanel("Data",DT::renderDataTable(dataTable())), select=TRUE)
# }
