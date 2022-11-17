Kullanılan Kütüphaneler

    lint : Kod okunabilirliğini arttırmak için kullanılıyor.
    dio : Http işlemlerimizi yapmak için kullanıyoruz.
    pretty_dio_logger : Dio paketi üzerinden veri gönderip aldığımızda, bu verilerin log'larını bize verir.
    provider : State management paketimiz
    retrofit , retrofit_generator : Dio için tür dönüştürücüsü (fromJson, toJson)
    json_annotation, json_serializable : Json'larımı serialization ve deserialization etmek için kullanılıyor.
    build_runner : Dart kodu kullanarak yardımcı dosyalarımızı oluşturmaya yarar.
    get_it : Singleton ve factory sınıflar oluşturmak için kullanacağımız paket.

Base'ler

    base_view : Pagelerimizin en üst katmanını sarmaladığımız stateless widget. Provider'ımızı her seferinde tanımlamamız gerekliliğininden bizi kurtaracak. Aynı zamanda view_model'lerimizdeki onInit metodunu sayfa yüklendikten sonra çalıştıracak.
    base_view_model : Projemizde providerımız için bir base. Bu sınıf sayesinde her view_model'de bulunması gereken metod ve değişkenleri bir kere tanımlayıp kurtuluyoruz.
    base_model : Bu sınıf sayesinde modellerimizi katmanlar arasında taşırken herhangi bir hata olduğunda hatayı taşımamızı kolaylaştırıyor.
