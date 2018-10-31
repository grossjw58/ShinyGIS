##ui.R

library(shiny)
library(DT)
source("LoadDataUI.R")
source("RegressionUI.R")
source("PcaUI.R")


ui = fluidPage(
  column(2,
    navbarPage(title="Processing Options",
      tabPanel(title="Load Data",
        LoadDataUI("data")
      ),
      navbarMenu(title = "Non Spatial Processing Options",
        tabPanel(title="Process1"
         ##"This will be PCA or something"
        ),
        tabPanel(title="PCA",
          PcaUI("pca")
        ),
        tabPanel(title="Linear Regression",
          RegressionUI("regression")
        )
      ),
      navbarMenu(title = "Spatial Processing Options",
        tabPanel(title="Spatial Process1",
          "This will be classification or something"
        ),
        tabPanel(title="Spatial Process2",
          "This will be ripplies k or something "
        ),
        tabPanel(title="Spatial Process3",
          "This will be who know what"
        )
      ),
      tabPanel(title="Download Output",
        "This will be where you go to download the currently selected tab for the process"
      )
    )
  ),
  column(9,
    fluidRow(
      ##DataPanelsUI("dataPanels")
    ),
    fluidRow(
      tabsetPanel(id="myTabs", type="pills")
    )
  )
)




