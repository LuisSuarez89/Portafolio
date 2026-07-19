import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../data/cv_data.dart';
import '../theme/app_theme.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});
  @override
  Widget build(BuildContext context) => _Wrap(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SectionTitle('Sobre mí', icon: Icons.person_outline), const SizedBox(height: 28),
        Wrap(spacing: 28, runSpacing: 22, crossAxisAlignment: WrapCrossAlignment.center, children: [
          const CircleAvatar(radius: 58, backgroundColor: AppColors.teal, child: Text('LC', style: TextStyle(fontSize: 34, color: AppColors.background, fontWeight: FontWeight.w900))),
          ConstrainedBox(constraints: const BoxConstraints(maxWidth: 760), child: Text(personalInfo.profile, style: Theme.of(context).textTheme.bodyLarge)),
        ]), const SizedBox(height: 22),
        const Wrap(spacing: 12, children: [_Badge('Remoto ✓'), _Badge('Híbrido ✓')]),
      ]).animate().fadeIn(duration: 500.ms).slideY(begin: .08));
}
class _Badge extends StatelessWidget { const _Badge(this.text); final String text; @override Widget build(BuildContext context)=>Chip(label: Text(text), backgroundColor: AppColors.amber.withValues(alpha: .16), side: BorderSide(color: AppColors.amber.withValues(alpha: .55)));}
class _Wrap extends StatelessWidget { const _Wrap({required this.child}); final Widget child; @override Widget build(BuildContext context)=>Padding(padding: const EdgeInsets.symmetric(vertical: 42), child: child);}
