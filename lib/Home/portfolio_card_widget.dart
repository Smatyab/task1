import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../MyInvestment/MyInvestment.dart';
import '../utils/colors.dart';

class PortfolioCardWidget extends StatelessWidget {
  const PortfolioCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyInvestment()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: AppColors.primary),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Total Return",
                      style: TextStyle(fontSize: 13, color: AppColors.textDark),
                    ),
                    const Text(
                      "₹ -8.3k (-14.23 %)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.negative,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_forward_ios, size: 16),
                    SvgPicture.asset('assets/Vector (4).svg'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),
            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AmountColumn(title: "Invested", value: "29.33k"),
                AmountColumn(title: "Current", value: "25.56k"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AmountColumn extends StatelessWidget {
  final String title;
  final String value;

  const AmountColumn({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/rupee.svg'),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: AppColors.textMedium),
            ),
            Text(
              value,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.textDark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
