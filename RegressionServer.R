RegressionServer=function(input,output,session,dataNames,dataList){
  print("it is in regression server")
  observe({dataNames
    ch=reactiveValuesToList(dataNames, all.names = FALSE)
    updateSelectInput(session,"dataSet",
      choices=ch,
      selecte=head(ch,1)
    )
  })
  observeEvent(dataNames,{
    print("it should be in observe event")
    ch=reactiveValuesToList(dataNames, all.names = FALSE)
    updateSelectInput(session,"depVar",
      choices=ch,
      selecte=head(ch,1)
    )
    updateSelectInput(session,"indVar",
      choices=ch,
      selecte=head(ch,1)
    )
  })
}