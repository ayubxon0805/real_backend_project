import 'package:hive_flutter/hive_flutter.dart';
part 'newmodel.g.dart';

@HiveType(typeId: 10)
class NewModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String id;
  NewModel({required this.id, required this.title});
}
