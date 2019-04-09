#' Türkiye Cumhuriyet Merkez Bankası API
#'
#' Bu paket Türkiye Cumhuriyet Merkez Bankası API'sini kullanarak sizlere projelerinize entegre edebileceğiniz dataframe oluşturur
#' @param series Seri kodunu vereceğiniz parametredir. Varsayılan olarak Enflasyon seri kodunu alır. "TP.FG.J0"
#' @param startDate Veri setinizin başlangıç tarihidir. Eğer veri girdiğiniz tarihten genç ise getirebildiği en eski veri setini getirir. Varsayılan olarak "01-01-2018"
#' @param endDate Veri setinizin bitiş tarihidir. Eğer veri girdiğiniz tarihten eski ise getirebildiği en yeni veri setini getirir. Varsayılan olarak "31-12-2019"
#' @param key Merkez Bankası üzerinden edineceğiniz anahtardır. Ücretsiz olarak üye olduktan sonra profilinizden edinebilirsiniz
#' @param aggregationTypes Veri setinin toplanma türleri.(Ortalama: "avg", En düşük: "min", En yüksek: "max", Başlangıç: "first", Bitiş: "last", Kümülatif: "sum") Varsayılan olarak "avg"
#' @param formulas Veri setinizin formül değeridir. (Düzey: "0", Yüzde Değişim: "1", Fark: "2", Yıllık Yüzde Değişim: "3", Yıllık Fark: "4", Bir Önceki Yılın Sonuna Göre Yüzde Değişim: "5", Bir Önceki Yılın Sonuna Göre Fark: "6", Hareketli Ortalama: "7", Hareketli Toplam: "8") Varsayılan olarak "0"
#' @param frequency Veri setinizin sıklığını belirtir.("daily", "business", "weekly", "twicemonthly", "monthly", "quarterly", "semiannual", "annual") varsayılan olarak "monthly"
#' @param unixtime_delete API içerisinde gelen UNIXTIME kolonunun silinip silinmeyeceği bilgisidir. Varsayılan olarak TRUE
#' @keywords merkez bankası
#' @export
#' @return Çıktı olarak dataframe döndürür
#' @examples
#' cbrt_api()
#' cbrt_api(series = "TP.FG.J0", startDate = "01-01-2019", endDate = "31-12-2019", aggregationTypes = "avg", formulas = "0", frequency = "monthly")

cbrt_api <- function(series="TP.FG.J0",
                          startDate="01-01-%202018",
                          endDate="31-12-%202019",
                          key="INbLrZNyJq",
                          aggregationTypes="avg",
                          formulas="0",
                          frequency="monthly",
                          unixtime_delete=TRUE){
  
  ### Verinin çekilme tipi.
  typee="csv"
  
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



