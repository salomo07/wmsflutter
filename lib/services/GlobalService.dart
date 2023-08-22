import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../config/ConfigApp.dart';

class GlobalService {
  Future<void> saveHive(field, data) async {
    await Hive.initFlutter();
    var box = await Hive.openBox(ConfigApp().databaseName);
    box.put(field, data);
    String xxx = await box.get(field);
    print(xxx);
  }

  Future<String> readToken() async {
    await Hive.initFlutter();
    var box = await Hive.openBox(ConfigApp().databaseName);
    return await box.get('credlogin') ?? "";
  }
}
