
import 'package:flutter/material.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Mentions légales')),
    body: const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        child: SelectionArea(
          child: Text(
            'Mentions légales — Wordesia\n\n'
            'Dernière mise à jour : 2025-10-23\n\n'
            'Éditeur — Mahugnon Services Ltd, 71–75 Shelton Street, London WC2H 9JQ, UK — contact@wordesia.com — +44 20 1234 5678 — N° 149XXXXXX.\n\n'
            'Directeur de publication — Mahugnon Elie Soglo.\n\n'
            'Hébergeur — (pour le site vitrine) Vercel Inc., 340 S Lemon Ave #4133, Walnut, CA 91789, USA — support@vercel.com — vercel.com.\n\n'
            'Propriété intellectuelle — Marques, logos, textes, images, audios, vidéos et bases de données : © Mahugnon Services Ltd. Toute reproduction, même partielle, est interdite.\n\n'
            'Signalement — abuse@wordesia.com',
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ),
    ),
  );
}
