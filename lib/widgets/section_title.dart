import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.title, {super.key, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Row(children: [
        Icon(icon, color: AppColors.teal),
        const SizedBox(width: 12),
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ]);
}
