import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../data/cv_data.dart';
import '../theme/app_theme.dart';
import '../widgets/section_title.dart';

class EducationSection extends StatelessWidget { const EducationSection({super.key}); @override Widget build(BuildContext context)=>Padding(padding: const EdgeInsets.symmetric(vertical:42), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[const SectionTitle('Educación', icon: Icons.school_outlined), const SizedBox(height:24), Wrap(spacing:16, runSpacing:16, children:[...education.map((e)=>_Card(title:e.title, subtitle:e.institution, meta:e.period)), ...certifications.map((c)=>_Card(title:c.name, subtitle:c.issuer, meta:c.date))])])).animate().fadeIn(duration:500.ms).slideY(begin:.08);}
class _Card extends StatelessWidget { const _Card({required this.title, required this.subtitle, required this.meta}); final String title, subtitle, meta; @override Widget build(BuildContext context)=>Container(width:330, padding:const EdgeInsets.all(20), decoration:BoxDecoration(color:AppColors.card,border:Border.all(color:AppColors.border),borderRadius:BorderRadius.circular(20)), child:Column(crossAxisAlignment:CrossAxisAlignment.start, children:[Text(title, style:Theme.of(context).textTheme.titleLarge), const SizedBox(height:8), Text(subtitle), const SizedBox(height:8), Text(meta, style:const TextStyle(color:AppColors.amber,fontWeight:FontWeight.bold))]));}
