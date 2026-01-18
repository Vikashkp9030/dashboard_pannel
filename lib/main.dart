// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Power Analytics',
//       theme: ThemeData(
//         useMaterial3: true,
//         scaffoldBackgroundColor: const Color(0xFFF4F7FD),
//       ),
//       home: const PowerAnalyticsScreen(),
//     );
//   }
// }
//
// class PowerAnalyticsScreen extends StatelessWidget {
//   const PowerAnalyticsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final kWLineData = <YearPower>[
//       YearPower(2009, 1900),
//       YearPower(2010, 2800),
//       YearPower(2011, 3100),
//       YearPower(2012, 2300),
//       YearPower(2013, 1400),
//       YearPower(2014, 1600),
//       YearPower(2015, 2600),
//       YearPower(2016, 3000),
//       YearPower(2017, 2300),
//       YearPower(2018, 1700),
//       YearPower(2019, 2600),
//     ];
//
//     final barData = <MonthPower>[
//       MonthPower("Jan", 140),
//       MonthPower("Feb", 120),
//       MonthPower("Mar", 160),
//       MonthPower("Apr", 110),
//       MonthPower("May", 130),
//       MonthPower("Jun", 150),
//       MonthPower("Jul", 125),
//       MonthPower("Aug", 165),
//       MonthPower("Sep", 135),
//       MonthPower("Oct", 145),
//       MonthPower("Nov", 155),
//       MonthPower("Dec", 140),
//     ];
//
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(14),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Dashboard",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
//               ),
//               const SizedBox(height: 12),
//
//               // Top cards
//               Row(
//                 children: const [
//                   Expanded(
//                     child: _MiniStatCard(
//                       title: "Fans",
//                       value: "27",
//                       subtitle: "Power Consumption",
//                       subValue: "270",
//                       iconBg: Color(0xFF39D98A),
//                       icon: Icons.ac_unit,
//                     ),
//                   ),
//                   SizedBox(width: 12),
//                   Expanded(
//                     child: _MiniStatCard(
//                       title: "Light",
//                       value: "65",
//                       subtitle: "Power Consumption",
//                       subValue: "876",
//                       iconBg: Color(0xFFFFA26B),
//                       icon: Icons.lightbulb,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 12),
//               Row(
//                 children: const [
//                   Expanded(
//                     child: _MiniStatCard(
//                       title: "Refrigerator",
//                       value: "4",
//                       subtitle: "Power Consumption",
//                       subValue: "0",
//                       iconBg: Color(0xFFFFD166),
//                       icon: Icons.kitchen,
//                     ),
//                   ),
//                   SizedBox(width: 12),
//                   Expanded(
//                     child: _MiniStatCard(
//                       title: "Air Condition",
//                       value: "852",
//                       subtitle: "Power Consumption",
//                       subValue: "65",
//                       iconBg: Color(0xFF6C63FF),
//                       icon: Icons.air,
//                     ),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 14),
//
//               // Line chart
//               _SectionCard(
//                 title: "Average power Consumption (kW/H)",
//                 trailing: const _Pill(label: "This Week"),
//                 child: SizedBox(
//                   height: 220,
//                   child: SfCartesianChart(
//                     plotAreaBorderWidth: 0,
//                     primaryXAxis: NumericAxis(
//                       majorGridLines: const MajorGridLines(width: 0),
//                       axisLine: const AxisLine(width: 0.6),
//                     ),
//                     primaryYAxis: NumericAxis(
//                       majorGridLines: const MajorGridLines(width: 0.3),
//                       axisLine: const AxisLine(width: 0),
//                     ),
//                     series: <CartesianSeries<YearPower, int>>[
//                       SplineSeries<YearPower, int>(
//                         dataSource: kWLineData,
//                         xValueMapper: (d, _) => d.year,
//                         yValueMapper: (d, _) => d.power,
//                         width: 3,
//                         markerSettings: const MarkerSettings(isVisible: true),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 14),
//
//               // Power consumption + radial gauge
//               _SectionCard(
//                 title: "Power Consumption",
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           _SmallBarRow(isLeft: true),
//                           SizedBox(height: 8),
//                           Text(
//                             "Heater",
//                             style: TextStyle(fontSize: 12, color: Colors.grey),
//                           ),
//                           SizedBox(height: 2),
//                           Text(
//                             "2,095",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       width: 140,
//                       height: 140,
//                       child: SfRadialGauge(
//                         axes: <RadialAxis>[
//                           RadialAxis(
//                             showLabels: false,
//                             showTicks: false,
//                             startAngle: 270,
//                             endAngle: 270,
//                             axisLineStyle: AxisLineStyle(
//                               thickness: 14,
//                               // cornerStyle: CornerStyle.bothCurve,
//                               color: Color(0xFFE8EEF7),
//                             ),
//                             pointers: const <GaugePointer>[
//                               RangePointer(
//                                 value: 17,
//                                 width: 14,
//                                 // cornerStyle: CornerStyle.bothCurve,
//                               ),
//                             ],
//                             annotations: const <GaugeAnnotation>[
//                               GaugeAnnotation(
//                                 angle: 90,
//                                 positionFactor: 0,
//                                 widget: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Text(
//                                       "17%",
//                                       style: TextStyle(
//                                         fontSize: 22,
//                                         fontWeight: FontWeight.w900,
//                                       ),
//                                     ),
//                                     Text(
//                                       "used",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                             minimum: 0,
//                             maximum: 100,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: const [
//                           _SmallBarRow(isLeft: false),
//                           SizedBox(height: 8),
//                           Text(
//                             "Lights",
//                             style: TextStyle(fontSize: 12, color: Colors.grey),
//                           ),
//                           SizedBox(height: 2),
//                           Text(
//                             "2,360",
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w800,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               const SizedBox(height: 14),
//
//               // Bar chart
//               _SectionCard(
//                 title: "Current Power Consumption (kW/H)",
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "1635.00",
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w900,
//                         color: Color(0xFF246BFD),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     SizedBox(
//                       height: 190,
//                       child: SfCartesianChart(
//                         plotAreaBorderWidth: 0,
//                         primaryXAxis: CategoryAxis(
//                           majorGridLines: const MajorGridLines(width: 0),
//                           axisLine: const AxisLine(width: 0),
//                         ),
//                         primaryYAxis: NumericAxis(
//                           majorGridLines: const MajorGridLines(width: 0.3),
//                           axisLine: const AxisLine(width: 0),
//                         ),
//                         series: <CartesianSeries<MonthPower, String>>[
//                           ColumnSeries<MonthPower, String>(
//                             dataSource: barData,
//                             xValueMapper: (d, _) => d.month,
//                             yValueMapper: (d, _) => d.power,
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// // ---------------- UI COMPONENTS ----------------
//
// class _MiniStatCard extends StatelessWidget {
//   final String title;
//   final String value;
//   final String subtitle;
//   final String subValue;
//   final IconData icon;
//   final Color iconBg;
//
//   const _MiniStatCard({
//     required this.title,
//     required this.value,
//     required this.subtitle,
//     required this.subValue,
//     required this.icon,
//     required this.iconBg,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 18,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Container(
//             height: 42,
//             width: 42,
//             decoration: BoxDecoration(
//               color: iconBg.withOpacity(0.18),
//               shape: BoxShape.circle,
//             ),
//             child: Icon(icon, color: iconBg),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: const TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   subtitle,
//                   style: const TextStyle(fontSize: 11, color: Colors.grey),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   subValue,
//                   style: const TextStyle(
//                     fontSize: 12,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _SectionCard extends StatelessWidget {
//   final String title;
//   final Widget child;
//   final Widget? trailing;
//
//   const _SectionCard({required this.title, required this.child, this.trailing});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(14),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 18,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 13,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ),
//               if (trailing != null) trailing!,
//             ],
//           ),
//           const SizedBox(height: 10),
//           child,
//         ],
//       ),
//     );
//   }
// }
//
// class _Pill extends StatelessWidget {
//   final String label;
//
//   const _Pill({required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//       decoration: BoxDecoration(
//         color: const Color(0xFFF3F6FC),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Text(
//         label,
//         style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
//       ),
//     );
//   }
// }
//
// class _SmallBarRow extends StatelessWidget {
//   final bool isLeft;
//
//   const _SmallBarRow({required this.isLeft});
//
//   @override
//   Widget build(BuildContext context) {
//     final bars = List.generate(9, (i) {
//       final h = (i % 3 + 1) * 6.0 + 6;
//       return Container(
//         width: 5,
//         height: h,
//         margin: const EdgeInsets.symmetric(horizontal: 2),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(2),
//           color: isLeft ? const Color(0xFF246BFD) : const Color(0xFFFF4D4D),
//         ),
//       );
//     });
//
//     return Align(
//       alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
//       child: Row(mainAxisSize: MainAxisSize.min, children: bars),
//     );
//   }
// }
//
// // ---------------- DUMMY MODELS ----------------
//
// class YearPower {
//   final int year;
//   final double power;
//   YearPower(this.year, this.power);
// }
//
// class MonthPower {
//   final String month;
//   final double power;
//   MonthPower(this.month, this.power);
// }

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
