import 'package:flutter/material.dart';
import 'package:mobile_flutter/ui/drawer/drawer_body.dart';
import 'package:mobile_flutter/ui/drawer/drawer_header.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        children: [
          DrawerHeaderPage(),
          DrawerBody(),
        ],
      ),
    );
  }
}
