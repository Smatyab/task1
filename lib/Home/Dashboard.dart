import 'package:flutter/material.dart';
import 'package:task1/Home/SearchbarWidget.dart';

import '../utils/colors.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(children: const [SearchBarWidget()]),
        ),
      ),
    );
  }
}
