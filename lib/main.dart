
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pages/home_page.dart';
import 'pages/privacy_page.dart';
import 'pages/terms_page.dart';
import 'pages/legal_page.dart';
import 'pages/delete_data_page.dart';

void main() {
  runApp(const WordesiaApp());
}

class WordesiaApp extends StatelessWidget {
  const WordesiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordesia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF3B82F6), brightness: Brightness.dark),
        useMaterial3: true,
        textTheme: TextTheme(bodyMedium: TextStyle(height: 1.5)),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/privacy_page': (_) => const PrivacyPage(),
        '/terms_page': (_) => const TermsPage(),
        '/legal': (_) => const LegalPage(),
        '/delete-data': (_) => const DeleteDataPage(),
      },
    );
  }
}

Future<void> openUrl(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'Could not open $url';
  }
}
