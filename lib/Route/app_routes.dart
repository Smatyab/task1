import 'package:flutter/material.dart';
import 'package:task1/MyInvestment/MyInvestment.dart';

import '../Home/dashboard.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String myInvestment = '/myInvestment';

  static Map<String, WidgetBuilder> routes = {
    dashboard: (context) => const Dashboard(),
    myInvestment: (context) => const MyInvestment(),
  };
}
