import 'package:flutter/material.dart';

import '../utils/colors.dart';

class InvestmentFilterTab extends StatefulWidget {
  const InvestmentFilterTab({super.key});

  @override
  State<InvestmentFilterTab> createState() => _InvestmentFilterTabState();
}

class _InvestmentFilterTabState extends State<InvestmentFilterTab> {
  int selectedIndex = 0;

  final List<String> tabs = [
    "Mutual Funds",
    "Fixed Deposit",
    "Investment",
    "SIP",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        itemBuilder: (context, index) {
          final bool isSelected = selectedIndex == index;

          return Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: isSelected
                          ? AppColors.textDark
                          : AppColors.textLight,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Container(
                    height: 2,
                    width: isSelected ? 28 : 0,
                    color: isSelected ? AppColors.textDark : Colors.transparent,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
