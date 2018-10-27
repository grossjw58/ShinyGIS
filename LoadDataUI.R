LoadDataUI = function(id){
  ns=NS(id)
  tagList(
    # Input: Select the type of data you want to upload ----
    selectInput(ns("dataType"), 
      "Select Data Type",
      choices = c(
        csv = "csv", 
        shapefile = "shp",
        json="JSON",##Still needs work on the sever side
        geojson="GEOJSON",##Still needs work on the sever side
        xls="xlsx"##Still needs work on the sever side
        ##get some other file formats
      )
    ),
    ## a conditional panel for csv
    conditionalPanel(
      condition = paste0('input[\'',ns('dataType'),"\']==\'csv\'"),
      # Input: Select a file ----
      fileInput(ns("inputFile_csv"),
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
      checkboxInput(ns("header_csv"), 
        "Header", 
        T
      ),
      # Input: Checkbox if strings as factors ----
      checkboxInput(ns("saf_csv"), 
        "Strings as factors", 
        F
      ),
      # Horizontal line ----
      tags$hr(),
      # Input: Select separator ----
      radioButtons(ns("sep_csv"),
        "Separator",
        choices = c(
          Comma = ",",
          Semicolon = ";",
          Tab = "\t"
        ),
        selected = ","
      ),
      # Input: Select quotes ----
      radioButtons(ns("quote_csv"),
        "Quote",
        choices = c(
          None = "",
          "Double Quote" = '"',
          "Single Quote" = "'"
          ),
        selected = '"'
      )
    ),
    conditionalPanel(
      condition = paste0('input[\'',ns('dataType'),"\']==\'shp\'"),
      # Input: Select a file ----
      "this is where the shp file input parameters will be"
    ),
    conditionalPanel(
      condition = paste0('input[\'',ns('dataType'),"\']==\'JSON\'"),
      # Input: Select a file ----
      "this is where the JSON file input parameters will be"
    ),
    conditionalPanel(
      condition = paste0('input[\'',ns('dataType'),"\']==\'GEOJSON\'"),
      # Input: Select a file ----
      "this is where the GEOJSON file input parameters will be"
    ),
    conditionalPanel(
      condition = paste0('input[\'',ns('dataType'),"\']==\'xlsx\'"),
      # Input: Select a file ----
      "this is where the xlsx file input parameters will be"
    ),
    # Horizontal line ----
    tags$hr(),
    # Input: Action button to confirm data load
    actionButton(ns("loadDataButton"),
      "Load"
    )
  )
}

