import 'package:flutter/material.dart';
import 'package:mobile_flutter/ui/logreg/login.dart';
import 'package:mobile_flutter/ui/logreg/register.dart';

class MaionPageScreen extends StatefulWidget {
  const MaionPageScreen({super.key});

  @override
  State<MaionPageScreen> createState() => _MaionPageScreenState();
}

class _MaionPageScreenState extends State<MaionPageScreen> {
  bool isPlay = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'LOGO',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          width: 40,
                          height: 40,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isSelected1 = false;
                                  isSelected2 = false;
                                  isSelected3 = false;
                                  isSelected4 = false;

                                  isPlay = !isPlay;
                                });
                              },
                              icon: Icon(
                                  isPlay == false ? Icons.menu : Icons.close)),
                        ),
                      )
                    ]),
                isPlay == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {});
                                isSelected1 = true;
                                isSelected2 = false;
                                isSelected3 = false;
                                isSelected4 = false;
                              },
                              child: Text(
                                'Bosh Sahifa',
                                style: TextStyle(
                                    color: isSelected1 == false
                                        ? const Color.fromARGB(255, 44, 58, 76)
                                        : const Color.fromARGB(
                                            255, 99, 177, 219),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  isSelected1 = false;
                                  isSelected2 = true;
                                  isSelected3 = false;
                                  isSelected4 = false;
                                });
                              },
                              child: Text(
                                'Vloglar',
                                style: TextStyle(
                                    color: isSelected2 == false
                                        ? const Color.fromARGB(255, 44, 58, 76)
                                        : const Color.fromARGB(
                                            255, 99, 177, 219),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  isSelected1 = false;
                                  isSelected2 = false;
                                  isSelected3 = true;
                                  isSelected4 = false;
                                });
                              },
                              child: Text(
                                'Biz haqimizda',
                                style: TextStyle(
                                    color: isSelected3 == false
                                        ? const Color.fromARGB(255, 44, 58, 76)
                                        : const Color.fromARGB(
                                            255, 99, 177, 219),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  isSelected1 = false;
                                  isSelected2 = false;
                                  isSelected3 = false;
                                  isSelected4 = true;
                                });
                              },
                              child: Text(
                                "Bog'lanish",
                                style: TextStyle(
                                    color: isSelected4 == false
                                        ? Color.fromARGB(255, 44, 58, 76)
                                        : const Color.fromARGB(
                                            255, 99, 177, 219),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                          const SizedBox(height: 8),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const RegisterPage();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 44, 58, 76),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  minimumSize: const Size(370, 40)),
                              child: const Text(
                                "Ro'yxatdan o'tish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPage();
                                  },
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 80, 161, 134),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),
                                  minimumSize: const Size(370, 40)),
                              child: const Text(
                                "Testni Boshlash",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              )),
                        ],
                      )
                    : const Text(''),

                SizedBox(height: MediaQuery.of(context).size.height * 0.2),

                /////////////////////////////////////////Test boshlanish qismi////////////////////////////////////////////////////
                const Text(
                  'Testlar &',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 44, 58, 76)),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Bilimingizni',
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 44, 58, 76)),
                ),
                const SizedBox(height: 25),
                const Text(
                  'oshiring',
                  style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 44, 58, 76)),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Test davomida turli elektron hisoblash',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 7),
                const Text('vositalari va shpargalkalardan foydalanish',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
                const SizedBox(height: 7),
                const Text('taqiqlanadi .',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
                const SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return LoginPage();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                            side: const BorderSide(color: Colors.green))),
                    child: const Text(
                      'Boshlash',
                      style: TextStyle(color: Colors.green),
                    )),
                const SizedBox(height: 120),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 58, 76),
                        borderRadius: BorderRadius.circular(4)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 350,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            width: 85,
                            height: 80,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LoginPage();
                                    },
                                  ));
                                },
                                icon: const ImageIcon(
                                  AssetImage('assets/test.png'),
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "Tekshiring",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "Test ishlash orqali olgan bilimlaringizni",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "va ko'nikmalaringizni tekshiring",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 30),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ));
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/next.png'),
                                color: Colors.green,
                                size: 50,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 58, 76),
                        borderRadius: BorderRadius.circular(4)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 350,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            width: 85,
                            height: 80,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LoginPage();
                                    },
                                  ));
                                },
                                icon: const ImageIcon(
                                  AssetImage('assets/books.png'),
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "O'rganing",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "Test ishlash orqali siz yangi bilimlarga",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "ega bo'lishingiz yoki mustahkamlab",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "olishingiz mumkin",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 13),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ));
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/next.png'),
                                color: Colors.green,
                                size: 50,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 58, 76),
                        borderRadius: BorderRadius.circular(4)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 350,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
                            width: 85,
                            height: 80,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return LoginPage();
                                    },
                                  ));
                                },
                                icon: const ImageIcon(
                                  AssetImage('assets/share.png'),
                                  color: Colors.green,
                                  size: 50,
                                )),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "Ulashing",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 13),
                          const Text(
                            "Test ishlash orqali siz yangi bilimlarga",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "ega bo'lishingiz yoki mustahkamlab",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            "olishingiz mumkin",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 13),
                          IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ));
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/next.png'),
                                color: Colors.green,
                                size: 50,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                Container(
                  color: const Color.fromARGB(255, 44, 58, 76),
                  width: MediaQuery.of(context).size.width,
                  height: 85,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage('assets/c.png'),
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '2024 Company Name',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
