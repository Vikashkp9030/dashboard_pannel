import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FlowerCircleGauge extends StatelessWidget {
  final double percent;
  final String labelTop;
  final String labelBottom;

  const FlowerCircleGauge({
    super.key,
    required this.percent,
    required this.labelTop,
    required this.labelBottom,
  });

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;

    final double size = screenW < 370 ? 120 : 150;
    final double innerSize = screenW < 370 ? 85 : 105;

    return SizedBox(
      width: size,
      height: size,
      child: SfRadialGauge(
        animationDuration: 800,
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 100,
            showTicks: false,
            showLabels: false,
            startAngle: 270,
            endAngle: 270,

            axisLineStyle: const AxisLineStyle(
              thickness: 14,
              color: Color(0xFFE8EEF7),
              cornerStyle: CornerStyle.bothCurve,
            ),

            pointers: <GaugePointer>[
              RangePointer(
                value: percent.clamp(0, 100),
                width: 14,
                cornerStyle: CornerStyle.bothCurve,
                gradient: const SweepGradient(
                  colors: [Color(0xFFFF8A3D), Color(0xFF246BFD)],
                ),
              ),
            ],

            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                angle: 90,
                positionFactor: 0,
                widget: Container(
                  width: innerSize,
                  height: innerSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFF5F7FB),
                    border: Border.all(
                      color: const Color(0xFFE6ECF6),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        labelTop,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        labelBottom,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
