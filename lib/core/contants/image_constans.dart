class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance => _instance ??= ImageConstants._init();
  ImageConstants._init();

  String get getKahve => toPng('kahve', "icons");
  String get getBuzdolabi => toPng('buzdolabi', "icons");

  String get getCihazEkle => toPng('addDevice', "icons");
  String get getAyarlar => toPng('settings', "icons");
  String get getCikis => toPng('exit', "icons");
  String get getGecmis => toPng('history', "icons");
  String get getUser => toPng('user', "icons");
  String get getParmakIzi => toPng('fingerPrint', "icons");
  String get getKayit => toPng('record', "icons");
  String get getDurdur => toPng('stop', "icons");
  String get getSabah => toPng('noon', "icons");
  String get getGece => toPng('night', "icons");

  String get getMikrodalga => toPng('microwave', "icons");
  String get getIsik => toPng('light', "icons");
  String get getZil => toPng('doorBell', "icons");
  String get getVibration => toPng('vibration', "icons");

  String toPng(String name, String path) => 'assets/$path/$name.png';
}
