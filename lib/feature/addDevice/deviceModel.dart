class DeviceModel {
  String name;
  int id;
  String imagePath;
  String macAdress;
  bool vibration;
  bool control;
  List<int> vibrationPattern;

  DeviceModel({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.macAdress,
    required this.vibration,
    required this.control,
    required this.vibrationPattern,
  });
}
