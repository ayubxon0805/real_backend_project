import 'package:hive/hive.dart';
import 'package:mobile_flutter/hive/hive_instance_class.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_flutter/model/newmodel.dart';
import 'package:path_provider/path_provider.dart' as pp;

@lazySingleton
class HiveService {
  const HiveService._();
  static Future<void> init() async {
    final dir = await pp.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.registerAdapter(NewModelAdapter());

    await Hive.openBox<NewModel>(HiveBoxNames.openedOrder);
  }
}
