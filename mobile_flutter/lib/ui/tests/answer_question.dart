import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:mobile_flutter/Servise/view_model/tests_time.dart';

class AnswerQuestion extends StatefulWidget {
  const AnswerQuestion({super.key});

  @override
  State<AnswerQuestion> createState() => _AnswerQuestionState();
}

class _AnswerQuestionState extends State<AnswerQuestion> {
  @override
  Widget build(BuildContext context) {
    Get.put(TimeController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 237, 216, 118)),
                        borderRadius: BorderRadius.circular(6))),
                child: const Text(
                  'YAKUNLASH',
                  style: TextStyle(color: Color.fromARGB(255, 237, 216, 118)),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 3, spreadRadius: 0.2)
                    ],
                    borderRadius: BorderRadius.circular(8)),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Qolgan Vaqti:',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 41, 93, 63)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
