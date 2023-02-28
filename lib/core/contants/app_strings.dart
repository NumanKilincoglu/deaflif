class AppStrings {
  //Login Sayfasi Constant Stringler
  static AppStrings? _instance;

  static AppStrings get instance => _instance ??= AppStrings._init();

  AppStrings._init();
  static const String DEAFLIF = "DeafLif";

  static const String LOGIN_GIRISYAPILIYOR = "Giriş Yapılıyor";
  static const String LOGIN_GIRIS_YAP = "Giriş Yap";
  static const String LOGIN_GIRIS_YAP_UPPER = "GİRİŞ YAP";
  static const String WELCOME = "HOŞ GELDİNİZ";

  static const String RECORD = "Kaydı Başlat";
  static const String STOP = "Kaydı Durdur";

  static const String DEVICE_NAME = "Cihaz İsmi";
  static const String DEVICE_CONTROL = "Cihaz Kontrol Edilebilir mi?";
  static const String DEVICE_VIBRATION = "Titreşim Durumu";
  static const String SAVE_AND_SET = "Kaydet ve Titreşimi Ayarla";


  static const String LOGIN_MAIL = "Email";
  static const String LOGIN_PASSWORD = "Şifre";
  static const String LOGIN_FORGOT_PASSWORD = "Şifremi Unuttum";
  static const String LOGIN_KEEP_ME_SIGNED = "Oturumu Açık Tut";
}
