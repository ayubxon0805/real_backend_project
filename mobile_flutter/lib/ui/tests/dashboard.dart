import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:mobile_flutter/ui/drawer/mydrawer.dart';
import 'package:mobile_flutter/ui/tests/answer_question.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AllTestsPage extends StatefulWidget {
  const AllTestsPage({super.key});

  @override
  State<AllTestsPage> createState() => _AllTestsPageState();
}

class _AllTestsPageState extends State<AllTestsPage> {
  String title1 = "";
  String title2 = "";
  String ti3le1 = "";
  String title4 = "";
  String title5 = "";
  String title6 = "";

  @override
  Widget build(BuildContext context) {
    var hivebox = Hive.box('aaaa');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Testlar',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.getString("title1");
                print('===================');
                prefs.getString("title1");
              },
              icon: Icon(Icons.save))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: hivebox.values.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(hivebox.values.last),
                );
              },
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
    );
  }

  Categoriescontainer(
    String title,
  ) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(color: Colors.grey, spreadRadius: 0.4, blurRadius: 6)
            ]),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Row(
              children: [
                SizedBox(width: 15),
                Icon(Icons.access_time_filled,
                    color: Color.fromARGB(255, 41, 92, 134)),
                SizedBox(width: 10),
                Text(
                  '60 Daqida',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 15),
                ImageIcon(AssetImage('assets/question.png'),
                    color: Color.fromARGB(255, 41, 92, 134)),
                SizedBox(width: 10),
                Text(
                  '40 ta savol',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 15),
                Icon(Icons.save, color: Color.fromARGB(255, 41, 92, 134)),
                SizedBox(width: 10),
                Text(
                  '80 ball umumiy',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text("Boshlashga tayyormisiz?"),
                        content: const Text(
                            "Sizga Test ishlash uchun 60 daqiqa\n beriladi"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 70,
                              height: 40,
                              child: Center(child: const Text("Yo'q")),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const AnswerQuestion();
                                },
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 70,
                              height: 40,
                              child: Center(child: const Text("Ha")),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 61, 119, 167),
                      minimumSize: Size(350, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Boshlash',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
