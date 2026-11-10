import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Media App'),
          backgroundColor: Colors.blue,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Image.asset('assets/images/flutter.png', fit: BoxFit.contain),
            Image.asset('assets/images/flutter.png', fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
