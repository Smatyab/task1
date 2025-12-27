import 'package:flutter/material.dart';

import 'InvestmentCard.dart';

class InvestmentListWidget extends StatelessWidget {
  const InvestmentListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InvestmentCard(
          fundName: "Axis Long Term Equity fund",
          category: "Equity ELSS",
          pnl: "₹155",
          xirr: "11.94%",
          investment: "₹7.82K",
          current: "₹8.65K",
          isProfit: true,
        ),
        SizedBox(height: 14),
        InvestmentCard(
          fundName: "Kotak Flexicap fund",
          category: "Equity Small Cap",
          pnl: "-₹355",
          xirr: "-9.14%",
          investment: "₹5.57K",
          current: "₹4.58K",
          isProfit: false,
        ),
      ],
    );
  }
}
