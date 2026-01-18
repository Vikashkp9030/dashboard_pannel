import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../data/power_dummy_data.dart';
import '../../domain/models/month_power.dart';
import '../../domain/models/year_power.dart';
import '../widgets/flower_circle_gauge.dart';
import '../widgets/mini_stat_card.dart';
import '../widgets/pill.dart';
import '../widgets/section_card.dart';
import '../widgets/small_bar_row.dart';

class PowerAnalyticsScreen extends StatelessWidget {
  const PowerAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final kWLineData = PowerDummyData.averagePowerLineData();
    final barData = PowerDummyData.currentPowerBarData();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),

              Row(
                children: const [
                  Expanded(
                    child: MiniStatCard(
                      title: "Fans",
                      value: "27",
                      subtitle: "Power Consumption",
                      subValue: "270",
                      iconBg: Color(0xFF39D98A),
                      icon: Icons.ac_unit,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: MiniStatCard(
                      title: "Light",
                      value: "65",
                      subtitle: "Power Consumption",
                      subValue: "876",
                      iconBg: Color(0xFFFFA26B),
                      icon: Icons.lightbulb,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                children: const [
                  Expanded(
                    child: MiniStatCard(
                      title: "Refrigerator",
                      value: "4",
                      subtitle: "Power Consumption",
                      subValue: "0",
                      iconBg: Color(0xFFFFD166),
                      icon: Icons.kitchen,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: MiniStatCard(
                      title: "Air Condition",
                      value: "852",
                      subtitle: "Power Consumption",
                      subValue: "65",
                      iconBg: Color(0xFF6C63FF),
                      icon: Icons.air,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              SectionCard(
                title: "Average power Consumption (kW/H)",
                trailing: const Pill(label: "This Week"),
                child: SizedBox(
                  height: 220,
                  child: SfCartesianChart(
                    plotAreaBorderWidth: 0,
                    primaryXAxis: NumericAxis(
                      majorGridLines: const MajorGridLines(width: 0),
                      axisLine: const AxisLine(width: 0.6),
                    ),
                    primaryYAxis: NumericAxis(
                      majorGridLines: const MajorGridLines(width: 0.3),
                      axisLine: const AxisLine(width: 0),
                    ),
                    series: <CartesianSeries<YearPower, int>>[
                      SplineSeries<YearPower, int>(
                        dataSource: kWLineData,
                        xValueMapper: (d, _) => d.year,
                        yValueMapper: (d, _) => d.power,
                        width: 3,
                        markerSettings: const MarkerSettings(isVisible: true),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 14),

              SectionCard(
                title: "Power Consumption",
                child: Row(
                  children: const [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SmallBarRow(isLeft: true),
                          SizedBox(height: 8),
                          Text(
                            "Heater",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "2,095",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),

                    FlowerCircleGauge(
                      percent: 17,
                      labelTop: "17%",
                      labelBottom: "used",
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SmallBarRow(isLeft: false),
                          SizedBox(height: 8),
                          Text(
                            "Lights",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "2,360",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              SectionCard(
                title: "Current Power Consumption (kW/H)",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1635.00",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF246BFD),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 190,
                      child: SfCartesianChart(
                        plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                          majorGridLines: const MajorGridLines(width: 0),
                          axisLine: const AxisLine(width: 0),
                        ),
                        primaryYAxis: NumericAxis(
                          majorGridLines: const MajorGridLines(width: 0.3),
                          axisLine: const AxisLine(width: 0),
                        ),
                        series: <CartesianSeries<MonthPower, String>>[
                          ColumnSeries<MonthPower, String>(
                            dataSource: barData,
                            xValueMapper: (d, _) => d.month,
                            yValueMapper: (d, _) => d.power,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
