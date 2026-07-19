import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TimelineItem extends StatelessWidget {
  const TimelineItem({super.key, required this.title, required this.subtitle, required this.period, required this.items});
  final String title;
  final String subtitle;
  final String period;
  final List<String> items;

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(children: [
            Container(width: 16, height: 16, decoration: const BoxDecoration(color: AppColors.teal, shape: BoxShape.circle)),
            Expanded(child: Container(width: 2, color: AppColors.border)),
          ]),
          const SizedBox(width: 18),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 18),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(color: AppColors.card, borderRadius: BorderRadius.circular(22), border: Border.all(color: AppColors.border)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Wrap(spacing: 12, runSpacing: 8, alignment: WrapAlignment.spaceBetween, children: [
                  Text(title, style: Theme.of(context).textTheme.titleLarge),
                  Text(period, style: const TextStyle(color: AppColors.amber, fontWeight: FontWeight.w700)),
                ]),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: AppColors.muted)),
                const SizedBox(height: 14),
                ...items.map((item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        const Text('• ', style: TextStyle(color: AppColors.teal)),
                        Expanded(child: Text(item)),
                      ]),
                    )),
              ]),
            ),
          ),
        ]),
      );
}
