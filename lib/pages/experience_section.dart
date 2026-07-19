import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../data/cv_data.dart';
import '../widgets/section_title.dart';
import '../widgets/timeline_item.dart';

class ExperienceSection extends StatelessWidget { const ExperienceSection({super.key}); @override Widget build(BuildContext context)=>Padding(padding: const EdgeInsets.symmetric(vertical:42), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[const SectionTitle('Experiencia', icon: Icons.work_outline), const SizedBox(height:28), ...experiences.map((e)=>TimelineItem(title:e.role, subtitle:e.company, period:e.period, items:e.achievements))])).animate().fadeIn(duration:500.ms).slideY(begin:.08);}
