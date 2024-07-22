import 'package:flutter/material.dart';

class DrawerHeaderPage extends StatefulWidget {
  const DrawerHeaderPage({super.key});

  @override
  State<DrawerHeaderPage> createState() => _DrawerHeaderPageState();
}

class _DrawerHeaderPageState extends State<DrawerHeaderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: Color.fromARGB(255, 37, 72, 113),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            width: 50,
            height: 50,
            child: Image.asset(
              'assets/hat.png',
              width: 25,
              height: 25,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            'Online Test',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w800, color: Colors.white),
          )
        ],
      ),
    );
  }
}
