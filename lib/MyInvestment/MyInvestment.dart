import 'package:flutter/material.dart';
import 'package:task1/utils/investment_filter_tab.dart';

import '../utils/colors.dart';

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
      body: Scaffold(
        backgroundColor: AppColors.card,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: AppColors.primary,
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: InvestmentFilterTab(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: const [SizedBox(height: 16)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
