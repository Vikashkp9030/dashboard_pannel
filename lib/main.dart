import 'package:flutter/material.dart';

import 'features/power_analytics/presentation/pages/power_analytics_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Analytics',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FD),
      ),
      home: const PowerAnalyticsScreen(),
    );
  }
}
