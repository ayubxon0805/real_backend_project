import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_flutter/data/shared.dart';
import 'package:mobile_flutter/hive/hive_class.dart';
import 'package:mobile_flutter/ui/main_page/main_page.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentsDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentsDirectory.path);
  HiveService.init();
  SharedService.init;
  PrefKeys;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: MaionPageScreen());
  }
}
