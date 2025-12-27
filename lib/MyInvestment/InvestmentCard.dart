import 'package:flutter/material.dart';

import '../utils/colors.dart';

class InvestmentCard extends StatelessWidget {
  final String fundName;
  final String category;
  final String pnl;
  final String xirr;
  final String investment;
  final String current;
  final bool isProfit;

  const InvestmentCard({
    super.key,
    required this.fundName,
    required this.category,
    required this.pnl,
    required this.xirr,
    required this.investment,
    required this.current,
    required this.isProfit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.background, // light yellow
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.primary),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fundName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    category,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textLight,
                    ),
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    pnl,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: isProfit ? Colors.green : AppColors.negative,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "XIRR $xirr",
                    style: TextStyle(
                      fontSize: 12,
                      color: isProfit ? Colors.green : AppColors.negative,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              valueRow("Investment", investment),
              valueRow("Current", current),
            ],
          ),
        ],
      ),
    );
  }

  Widget valueRow(String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 11, color: AppColors.textLight),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
          ),
        ),
      ],
    );
  }
}
