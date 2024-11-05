import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff6e40),
          title: Text('Tugas Pertemuan 4'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 85,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Box 1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 200,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Box 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 100,
                    height: 200,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Box 3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ]
              )
            ],
          ),
        ),
      )
    );
  }
}
              