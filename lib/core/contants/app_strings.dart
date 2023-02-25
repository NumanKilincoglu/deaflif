class AppStrings {
  //Login Sayfasi Constant Stringler
  static AppStrings? _instance;

  static AppStrings get instance => _instance ??= AppStrings._init();

  AppStrings._init();
  static const String LOGIN_GIRISYAPILIYOR = "Giriş Yapılıyor";
  static const String LOGIN_GIRIS_YAP = "Giriş Yap";
  static const String LOGIN_MAIL = "Email";
  static const String LOGIN_PASSWORD = "Şifre";
  static const String LOGIN_FORGOT_PASSWORD = "Şifremi Unuttum";
  static const String LOGIN_KEEP_ME_SIGNED = "Oturumu Açık Tut";
}
