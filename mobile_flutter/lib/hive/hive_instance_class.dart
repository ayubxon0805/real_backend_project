import 'package:hive/hive.dart';

import 'package:mobile_flutter/model/newmodel.dart';

class HiveBoxes {
  const HiveBoxes._();
  static final Box<NewModel> prefsBox =
      Hive.box<NewModel>(HiveBoxNames.openedOrder);

  /// It clears all the boxes
  static Future<void> clearAllBoxes() async {
    await Future.wait([
      prefsBox.clear(),
    ]);
  }
}

class HiveBoxNames {
  static const String openedOrder = 'openedOrder';
  
}
