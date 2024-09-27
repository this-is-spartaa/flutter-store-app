import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/bag.jpg", fit: BoxFit.cover)),
            SizedBox(height: 2),
            Expanded(child: Image.asset("assets/shoes.jpg", fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
