import 'package:flutter/material.dart';

class SmallBarRow extends StatelessWidget {
  final bool isLeft;

  const SmallBarRow({super.key, required this.isLeft});

  @override
  Widget build(BuildContext context) {
    final bars = List.generate(9, (i) {
      final h = (i % 3 + 1) * 6.0 + 6;
      return Container(
        width: 5,
        height: h,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: isLeft ? const Color(0xFF246BFD) : const Color(0xFFFF4D4D),
        ),
      );
    });

    return Align(
      alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
      child: Row(mainAxisSize: MainAxisSize.min, children: bars),
    );
  }
}
