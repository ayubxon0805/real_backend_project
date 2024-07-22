// ignore_for_file: use_build_context_synchronously, unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mobile_flutter/Servise/ApiService/api.dart';
import 'package:mobile_flutter/hive/hive_class.dart';
import 'package:mobile_flutter/hive/hive_instance_class.dart';
import 'package:mobile_flutter/model/newmodel.dart';
import 'package:mobile_flutter/ui/logreg/register.dart';
import 'package:mobile_flutter/ui/tests/dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();
  String title1 = "";
  String title2 = "";
  String title3 = "";
  String title4 = "";
  String title5 = "";
  String title6 = "";
  String id1 = "";
  String id2 = "";
  String id3 = "";
  String id4 = "";
  String id5 = "";
  String id6 = "";
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
            height: 485,
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
                  'Xush kelibsiz!',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Hisobingizga Kiring',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, bottom: 17, top: 25),
                  child: TextField(
                    controller: login,
                    decoration: const InputDecoration(
                        hintText: 'Login', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 17, right: 17, bottom: 17),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        hintText: 'Parol', border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      http.Response response = await ApiService()
                          .authenticate(login.text, password.text);

                      http.Response request = await ApiService().sendaccesTkn();

                      if (response.statusCode == 200) {
                        String aToken = "";
                        String rToken = "";
                        aToken = jsonDecode(response.body)['data']["tokens"]
                            ['access_token'];
                        rToken = jsonDecode(response.body)['data']["tokens"]
                            ['refresh_token'];

                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setString('token', aToken);
                        prefs.getString('token');
                        ////////////////////////////////// ikkinchi qismi ///////
                        ///
                        prefs.setString(
                            'title1',
                            jsonDecode(request.body)["data"]["categories"][0]
                                ["title"]);
                        prefs.setString(
                            'title2',
                            jsonDecode(request.body)["data"]["categories"][1]
                                ["title"]);
                        prefs.setString(
                            'title3',
                            jsonDecode(request.body)["data"]["categories"][2]
                                ["title"]);
                        prefs.setString(
                            'title4',
                            jsonDecode(request.body)["data"]["categories"][3]
                                ["title"]);
                        prefs.setString(
                            'title5',
                            jsonDecode(request.body)["data"]["categories"][4]
                                ["title"]);
                        prefs.setString(
                            'title6',
                            jsonDecode(request.body)["data"]["categories"][5]
                                ["title"]);
                        /////////

                        prefs.setString(
                            'title1',
                            jsonDecode(request.body)["data"]["categories"][0]
                                ["title"]);
                        prefs.setString(
                            'id2',
                            jsonDecode(request.body)["data"]["categories"][1]
                                ["id"]);
                        prefs.setString(
                            'id3',
                            jsonDecode(request.body)["data"]["categories"][2]
                                ["id"]);
                        prefs.setString(
                            'id4',
                            jsonDecode(request.body)["data"]["categories"][3]
                                ["id"]);
                        prefs.setString(
                            'id5',
                            jsonDecode(request.body)["data"]["categories"][4]
                                ["id"]);
                        prefs.setString(
                            'id6',
                            jsonDecode(request.body)["data"]["categories"][5]
                                ["id"]);
                        title1 = prefs.getString("title1").toString();
                        title2 = prefs.getString("title2").toString();
                        title3 = prefs.getString("title3").toString();
                        title4 = prefs.getString("title4").toString();
                        title5 = prefs.getString("title5").toString();
                        title6 = prefs.getString("title6").toString();

                        id1 = prefs.getString("id1").toString();
                        id2 = prefs.getString("id2").toString();
                        id3 = prefs.getString("id3").toString();
                        id4 = prefs.getString("id4").toString();
                        id5 = prefs.getString("id5").toString();
                        id6 = prefs.getString("id6").toString();

                        HiveBoxes.prefsBox
                            .add(NewModel(id: id1, title: title1));
                        HiveBoxes.prefsBox
                            .add(NewModel(id: id2, title: title2));
                        HiveBoxes.prefsBox
                            .add(NewModel(id: id3, title: title3));
                        HiveBoxes.prefsBox
                            .add(NewModel(id: id4, title: title4));
                        HiveBoxes.prefsBox
                            .add(NewModel(id: id5, title: title5));
                        HiveBoxes.prefsBox
                            .add(NewModel(id: id6, title: title6));
                        ////////////
                        ///
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AllTestsPage();
                          },
                        ));
                      }
                      ApiService().sendaccesTkn();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 92, 197, 173),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        minimumSize: const Size(345, 40)),
                    child: const Text(
                      'KIRISH',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Profilingiz mavjud emasmi',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const RegisterPage();
                            },
                          ));
                        },
                        child: const Text("Ro'yhatdan o'tish"))
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
