class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance => _instance ??= ImageConstants._init();
  ImageConstants._init();

  String get getKahve => toPng('kahve', "icons");
  String get getBuzdolabi => toPng('buzdolabi', "icons");

  String toPng(String name, String path) => 'assets/$path/$name.png';
}
