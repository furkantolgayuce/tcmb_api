% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cbrt_api_function.R
\name{cbrt_api}
\alias{cbrt_api}
\title{Türkiye Cumhuriyet Merkez Bankası API}
\usage{
cbrt_api(series = "TP.FG.J0", startDate = "01-01-\%202018",
  endDate = "31-12-\%202019", key = "INbLrZNyJq",
  aggregationTypes = "avg", formulas = "0", frequency = "monthly",
  unixtime_delete = TRUE)
}
\arguments{
\item{series}{Seri kodunu vereceğiniz parametredir. Varsayılan olarak Enflasyon seri kodunu alır. "TP.FG.J0"}

\item{startDate}{Veri setinizin başlangıç tarihidir. Eğer veri girdiğiniz tarihten genç ise getirebildiği en eski veri setini getirir. Varsayılan olarak "01-01-2018"}

\item{endDate}{Veri setinizin bitiş tarihidir. Eğer veri girdiğiniz tarihten eski ise getirebildiği en yeni veri setini getirir. Varsayılan olarak "31-12-2019"}

\item{key}{Merkez Bankası üzerinden edineceğiniz anahtardır. Ücretsiz olarak üye olduktan sonra profilinizden edinebilirsiniz}

\item{aggregationTypes}{Veri setinin toplanma türleri.(Ortalama: "avg", En düşük: "min", En yüksek: "max", Başlangıç: "first", Bitiş: "last", Kümülatif: "sum") Varsayılan olarak "avg"}

\item{formulas}{Veri setinizin formül değeridir. (Düzey: "0", Yüzde Değişim: "1", Fark: "2", Yıllık Yüzde Değişim: "3", Yıllık Fark: "4", Bir Önceki Yılın Sonuna Göre Yüzde Değişim: "5", Bir Önceki Yılın Sonuna Göre Fark: "6", Hareketli Ortalama: "7", Hareketli Toplam: "8") Varsayılan olarak "0"}

\item{frequency}{Veri setinizin sıklığını belirtir.("daily", "business", "weekly", "twicemonthly", "monthly", "quarterly", "semiannual", "annual") varsayılan olarak "monthly"}

\item{unixtime_delete}{API içerisinde gelen UNIXTIME kolonunun silinip silinmeyeceği bilgisidir. Varsayılan olarak TRUE}
}
\value{
Çıktı olarak dataframe döndürür
}
\description{
Bu paket Türkiye Cumhuriyet Merkez Bankası API'sini kullanarak sizlere projelerinize entegre edebileceğiniz dataframe oluşturur
}
\examples{
cbrt_api()
cbrt_api(series = "TP.FG.J0", startDate = "01-01-2019", endDate = "31-12-2019", aggregationTypes = "avg", formulas = "0", frequency = "monthly")
}
\keyword{bankası}
\keyword{merkez}
