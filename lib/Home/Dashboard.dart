import 'package:flutter/material.dart';
import 'package:task1/Home/SearchbarWidget.dart';
import 'package:task1/Home/TopRankingFunds.dart';
import 'package:task1/Home/category_row_widget.dart';
import 'package:task1/Home/portfolio_card_widget.dart';

import '../MyInvestment/MyInvestment.dart';
import '../utils/CustomBottomNavigationBar.dart';
import '../utils/colors.dart';
import 'AdsCardWidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.card,

      body: _screens()[currentIndex],

      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  /// 🟢 SCREENS LIST
  List<Widget> _screens() {
    return [
      homeScreen(),
      MyInvestment(),
      placeholderScreen("Discover"),
      placeholderScreen("Profile"),
    ];
  }

  /// 🏠 HOME SCREEN CONTENT (YOUR EXISTING UI)
  Widget homeScreen() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget placeholderScreen(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
