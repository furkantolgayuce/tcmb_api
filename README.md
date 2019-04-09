#  Türkiye Cumhuriyet Merkez Bankası API

**Authors:** Furkan Tolga Yüce

**Version:** 0.1

**Description:** Bu paket Türkiye Cumhuriyet Merkez Bankası API'sini kullanarak sizlere projelerinize entegre edebileceğiniz dataframe oluşturur.

**Depends:** R (>= 3.4.4)

**License:** MIT

**Encoding:** UTF-8

**LazyData:** true

**RoxygenNote:** 6.1.1

## Parametreler

### series 

Seri kodunu vereceğiniz parametredir. 

Varsayılan olarak Enflasyon seri kodunu alır. "TP.FG.J0"

### startDate 

Veri setinizin başlangıç tarihidir. Eğer veri girdiğiniz tarihten genç ise getirebildiği en eski veri setini getirir. 

Varsayılan olarak "01-01-2018"

### endDate 

Veri setinizin bitiş tarihidir. Eğer veri girdiğiniz tarihten eski ise getirebildiği en yeni veri setini getirir. 

Varsayılan olarak "31-12-2019"

### key 

Merkez Bankası üzerinden edineceğiniz anahtardır. Ücretsiz olarak üye olduktan sonra profilinizden edinebilirsiniz

### aggregationTypes 

Veri setinin toplanma türleri.

* Ortalama: "avg" 

* En düşük: "min"

* En yüksek: "max"

* Başlangıç: "first"

* Bitiş: "last"

* Kümülatif: "sum"

Varsayılan olarak "avg"

### formulas 

Veri setinizin formül değeridir. 

* Düzey: "0"
* Yüzde Değişim: "1"
* Fark: "2"
* Yıllık Yüzde Değişim: "3"
* Yıllık Fark: "4"
* Bir Önceki Yılın Sonuna Göre Yüzde Değişim: "5"
* Bir Önceki Yılın Sonuna Göre Fark: "6"
* Hareketli Ortalama: "7"
* Hareketli Toplam: "8"

Varsayılan olarak "0"

### frequency 

Veri setinizin sıklığını belirtir.

* "daily"
* "business"
* "weekly"
* "twicemonthly"
* "monthly"
* "quarterly"
* "semiannual"
* "annual"

varsayılan olarak "monthly"

### unixtime_delete 

API içerisinde gelen UNIXTIME kolonunun silinip silinmeyeceği bilgisidir. 

Varsayılan olarak TRUE

## Detaylar

[Merkez Bankası - EVDS_Web_Servis_Kullanim_Kilavuzu](https://evds2.tcmb.gov.tr/help/videos/EVDS_Web_Servis_Kullanim_Kilavuzu.pdf)

