cbrt_api <- function(series="TP.FG.J0",
                          startDate="01-01-%202018",
                          endDate="31-12-%202019",
                          typee="csv",
                          key="INbLrZNyJq",
                          aggregationTypes="avg",
                          formulas="0",
                          frequency="monthly",
                          unixtime_delete=TRUE){
  
  ### Frequency Control
  frequency_control <- function(frequency){
    if(frequency=="daily"){
      frequency<-"1"
    }else if(frequency=="business"){
      frequency<-"2"
    }else if(frequency=="weekly"){
      frequency<-"3"
    }else if(frequency=="twicemonthly"){
      frequency<-"4"
    }else if(frequency=="monthly"){
      frequency<-"5"
    }else if(frequency=="quarterly"){
      frequency<-"6"
    }else if(frequency=="semiannual"){
      frequency<-"7"
    }else if(frequency=="annual"){
      frequency<-"8"
    }
    return(frequency);
  }
  
  ### CBRT API LINK
  cbrt_url<-paste0("https://evds2.tcmb.gov.tr/service/evds/series=", series, "&startDate=", startDate, "&endDate=", endDate, "&type=",typee, "&key=", key, "&aggregationTypes=", aggregationTypes, "&formulas=", formulas, "&frequency=", frequency_control(frequency))
  #print(cbrt_url)
  
  ### DATASET
  data <- read.csv(cbrt_url)
  
  ### DELETE UNIXTIME
  if(unixtime_delete == TRUE){
    data <- subset(data, select = -c(UNIXTIME) )  
  }
  
  ###RETURN
  return(data);
}



