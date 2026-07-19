import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/cv_data.dart';
import '../theme/app_theme.dart';
import '../utils/cv_download.dart';
import '../widgets/section_title.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final name = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    message.dispose();
    super.dispose();
  }

  Future<void> _downloadCv() => downloadCv();

  Future<void> _send() async {
    final uri = Uri(
      scheme: 'mailto',
      path: personalInfo.email,
      queryParameters: {
        'subject': 'Contacto desde portafolio - ${name.text}',
        'body': 'Nombre: ${name.text}\nEmail: ${email.text}\n\n${message.text}',
      },
    );
    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle('Contacto', icon: Icons.mail_outline),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: _downloadCv,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.teal,
              foregroundColor: AppColors.background,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
            icon: const Icon(Icons.download_rounded),
            label: const Text('Descargar CV'),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: AppColors.card,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              children: [
                TextField(controller: name, decoration: const InputDecoration(labelText: 'Nombre')),
                TextField(controller: email, decoration: const InputDecoration(labelText: 'Email')),
                TextField(
                  controller: message,
                  minLines: 4,
                  maxLines: 6,
                  decoration: const InputDecoration(labelText: 'Mensaje'),
                ),
                const SizedBox(height: 18),
                FilledButton.icon(
                  onPressed: _send,
                  icon: const Icon(Icons.send),
                  label: const Text('Enviar por email'),
                ),
                const SizedBox(height: 18),
                Wrap(
                  spacing: 12,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => launchUrl(Uri.parse(personalInfo.linkedin)),
                      icon: const Icon(Icons.business),
                      label: const Text('LinkedIn'),
                    ),
                    OutlinedButton.icon(
                      onPressed: () => launchUrl(Uri.parse(personalInfo.github)),
                      icon: const Icon(Icons.code),
                      label: const Text('GitHub'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(duration: 500.ms).slideY(begin: .08);
  }
}

