import 'package:flutter/material.dart';
import 'package:task1/Home/SearchbarWidget.dart';
import 'package:task1/Home/TopRankingFunds.dart';
import 'package:task1/Home/category_row_widget.dart';
import 'package:task1/Home/portfolio_card_widget.dart';

import '../utils/colors.dart';
import 'AdsCardWidget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.card,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity, // Ensures it stretches edge-to-edge
              color: AppColors.primary,
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: const SearchBarWidget(),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const [
                  SizedBox(height: 16),
                  AdsCardWidget(),
                  SizedBox(height: 16),
                  PortfolioCardWidget(),
                  SizedBox(height: 16),
                  CategoryRowWidget(),
                  SizedBox(height: 16),
                  TopRankingFundsWidget(),
                  SizedBox(height: 20), // Bottom spacer
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
