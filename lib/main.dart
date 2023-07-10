import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int consecutiveDays = 0;
  bool isTaken = false;

  void markAsTaken() {
    setState(() {
      isTaken = true;
      consecutiveDays++;
    });
  }

  void resetConsecutiveDays() {
    setState(() {
      consecutiveDays = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'お薬アプリ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('お薬アプリ'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isTaken ? 'すごい！' : '',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '連続 $consecutiveDays 日間成功！',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text('お薬を飲んだ'),
                onPressed: () {
                  markAsTaken();
                },
              ),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text('連続日数をリセット'),
                onPressed: () {
                  resetConsecutiveDays();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
