import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart';
import 'package:task1/Home/Dashboard.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (BuildContext c) {
        return MyApp();
      },
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      home: const Dashboard(),
    );
  }
}
