import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'providers/chat_provider.dart';
import 'theme/app_theme.dart';

void main() => runApp(const LuisCvApp());

class LuisCvApp extends StatelessWidget {
  const LuisCvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatProvider(),
      child: MaterialApp(
        title: 'Luis CV',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark(),
        home: const HomePage(),
      ),
    );
  }
}
