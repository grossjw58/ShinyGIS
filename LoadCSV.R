LoadCSVUI = function(id){
  ns=NS(id)
  tagList(
    # Input: Select a file ----
    fileInput(ns("inputFile"),
      "Choose CSV File",
      multiple = F,
      accept = c(
        "text/csv",
        "text/comma-separated-values,text/plain",
        ".csv"
      )
    ),
    # Horizontal line ----
    tags$hr(),
    # Input: Checkbox if file has header ----
    checkboxInput(ns("header"), 
      "Header", 
      T
    ),
    # Input: Checkbox if strings as factors ----
    checkboxInput(ns("saf"), 
      "Strings as factors", 
      F
    ),
    # Horizontal line ----
    tags$hr(),
    # Input: Select separator ----
    radioButtons(ns("sep"),
      "Separator",
      choices = c(
        Comma = ",",
        Semicolon = ";",
        Tab = "\t"
      ),
      selected = ","
    ),
    # Input: Select quotes ----
    radioButtons(ns("quote"),
      "Quote",
      choices = c(
        None = "",
        "Double Quote" = '"',
        "Single Quote" = "'"
        ),
      selected = '"'
    ),
    # Horizontal line ----
    tags$hr(),
    # Input: Action button to confirm data load
    actionButton(ns("loadDataButton"),
      "Load"
    )
  )
}

LoadCSV = function(input,output,session){
  userFile=reactive({
    # If no file is selected, don't do anything
    validate(need(input$inputFile,message="Select a Data set!"))
    input$inputFile
  })
  
  df=eventReactive(input$loadDataButton,{
    read.csv(userFile()$datapath,header=input$header,sep=input$sep,quote=input$quote,stringsAsFactors = input$saf)
  })
}
