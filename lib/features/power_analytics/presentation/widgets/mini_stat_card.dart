import 'package:flutter/material.dart';

class MiniStatCard extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;
  final String subValue;
  final IconData icon;
  final Color iconBg;

  const MiniStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.subtitle,
    required this.subValue,
    required this.icon,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                const SizedBox(height: 2),
                Text(
                  subValue,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: iconBg.withOpacity(0.18),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconBg),
          ),
        ],
      ),
    );
  }
}
