
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
    decoration: const BoxDecoration(color: Color(0xFF0b1020)),
    child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('© 2025 Mahugnon Services Ltd — Tous droits réservés.', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white70)),
            const SizedBox(height: 8),
            Wrap(spacing: 16, children: [
              TextButton(onPressed: () => Navigator.pushNamed(context, '/privacy'), child: const Text('Politique de confidentialité')),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/terms'), child: const Text('Conditions d\'utilisation')),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/legal'), child: const Text('Mentions légales')),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/delete-data'), child: const Text('Suppression des données')),
            ]),
          ],
        ),
      ),
    ),
  );
}
