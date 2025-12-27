import 'package:flutter/material.dart';

class MyInvestment extends StatelessWidget {
  const MyInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portfolio",
          style: TextStyle(color: Color(0xFF242424)),
        ),
        backgroundColor: const Color(0xFFFFD24C),
        iconTheme: const IconThemeData(color: Color(0xFF242424)),
        elevation: 0,
      ),
      body: const Center(
        child: Text("Portfolio Details Screen", style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
