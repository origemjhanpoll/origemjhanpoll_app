import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String githubUrl = 'https://github.com/origemjhanpoll';
  static const String siteUrl = 'https://origemjhanpoll.github.io/';
  static const String githubProfilePic =
      'https://avatars.githubusercontent.com/u/131689163?v=4';

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bem-vindo!'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(githubProfilePic),
              ),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.account_circle),
              label: const Text('Meu GitHub'),
              onPressed: () => _launchUrl(githubUrl),
            ),
            FilledButton.icon(
              icon: const Icon(Icons.web),
              label: const Text('Meu Site Pessoal'),
              onPressed: () => _launchUrl(siteUrl),
            ),
          ],
        ),
      ),
    );
  }
}
