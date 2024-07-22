import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  int _remainingTime = 60 * 60;
  bool _isRunning = false;
  Stopwatch _stopwatch = Stopwatch();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${Duration(seconds: _remainingTime)}',
          style: TextStyle(fontSize: 32),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isRunning ? null : _startCountdown,
              child: Text('Start'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: _isRunning ? _toggleTimer : null,
              child: Text(_isRunning ? 'Pause' : 'Resume'),
            ),
          ],
        ),
      ],
    );
  }

  void _startCountdown() {
    if (_remainingTime > 0) {
      _stopwatch.start();
      Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          _remainingTime = _stopwatch.elapsedMilliseconds ~/ 1000;
        });
        if (_remainingTime == 0) {
          timer.cancel();
          _stopwatch.reset();
          _isRunning = false;
          // Perform your desired action when the timer reaches 0
        }
      });
    }
  }

  void _toggleTimer() {
    setState(() {});
  }
}
