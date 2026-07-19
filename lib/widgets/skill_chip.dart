import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SkillChip extends StatelessWidget {
  const SkillChip(this.label, {super.key});
  final String label;
  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: AppColors.teal.withValues(alpha: .09),
          border: Border.all(color: AppColors.teal.withValues(alpha: .42)),
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(label, style: const TextStyle(color: AppColors.text, fontWeight: FontWeight.w600)),
      );
}
