import 'package:flutter/material.dart';
import 'package:task1/Home/SearchbarWidget.dart';
import 'package:task1/Home/portfolio_card_widget.dart';

import '../utils/colors.dart';
import 'AdsCardWidget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: const [
              SearchBarWidget(),
              SizedBox(height: 16),
              AdsCardWidget(),
              SizedBox(height: 16),
              PortfolioCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
