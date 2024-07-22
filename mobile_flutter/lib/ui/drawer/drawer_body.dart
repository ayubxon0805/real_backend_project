import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({super.key});

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.853,
      color: Color.fromARGB(255, 37, 72, 113),
      child: Column(
        children: [
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 16),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/question.png',
                      width: 40,
                      height: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Testlar bo`limi",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              )),
          const SizedBox(height: 350),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 88, 179, 91),
                  minimumSize: Size(310, 45),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: const Row(
                children: [
                  Icon(
                    Icons.telegram,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Telegram kanalimiz!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
          const SizedBox(height: 14),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 211, 44, 18),
                  minimumSize: Size(310, 45),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: const Row(
                children: [
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Hisobdan chiqish!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
