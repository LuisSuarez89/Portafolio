import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/cv_data.dart';
import '../theme/app_theme.dart';
import '../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle('Proyectos', icon: Icons.folder_copy_outlined),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final desktop = constraints.maxWidth > 760;
              final spacing = desktop ? 18.0 : 0.0;
              final cardWidth = desktop ? (constraints.maxWidth - spacing) / 2 : constraints.maxWidth;

              return Wrap(
                spacing: spacing,
                runSpacing: 18,
                children: List.generate(
                  projects.length,
                  (index) => SizedBox(
                    width: cardWidth,
                    child: _ProjectCard(project: projects[index])
                        .animate(delay: (100 * index).ms)
                        .fadeIn(duration: 500.ms)
                        .slideY(begin: .12, curve: Curves.easeOutCubic),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProjectCard extends StatefulWidget {
  const _ProjectCard({required this.project});

  final Map<String, dynamic> project;

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final stack = widget.project['stack'] as List<String>;
    final github = Uri.parse(widget.project['github'] as String);

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => setState(() => expanded = !expanded),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 3, color: AppColors.teal),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.project['icono'] as String, style: const TextStyle(fontSize: 28)),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.project['nombre'] as String,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            AnimatedSize(
              duration: 220.ms,
              curve: Curves.easeInOut,
              child: Text(
                widget.project['descripcion'] as String,
                maxLines: expanded ? null : 3,
                overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: stack.map((tech) => _StackChip(tech)).toList(),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: () => launchUrl(github, mode: LaunchMode.externalApplication),
                icon: const Icon(Icons.open_in_new, size: 18),
                label: const Text('Ver en GitHub'),
                style: TextButton.styleFrom(foregroundColor: AppColors.teal),
              ),
            ),
          ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StackChip extends StatelessWidget {
  const _StackChip(this.label);

  final String label;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: AppColors.border,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style: const TextStyle(color: AppColors.teal, fontSize: 12, fontWeight: FontWeight.w700),
        ),
      );
}
