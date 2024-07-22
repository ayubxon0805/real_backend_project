import 'package:flutter/material.dart';
import 'package:mobile_flutter/ui/logreg/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 126, 253, 232),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: 0.3, blurRadius: 10)
            ], color: Colors.white, borderRadius: BorderRadius.circular(17)),
            width: 375,
            height: 460,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Icon(
                  Icons.lock,
                  size: 70,
                  color: Color.fromARGB(255, 31, 185, 141),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Ro'yhatdan o'tish",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 17, right: 17, bottom: 17, top: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Login', border: OutlineInputBorder()),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 17, right: 17, bottom: 17),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Parol', border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 92, 197, 173),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: Size(345, 40)),
                    child: const Text(
                      "RO'YXATDAN O'TISH",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hisobingiz bormi?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ));
                        },
                        child: Text("Kirish"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
