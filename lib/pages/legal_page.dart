
import 'package:flutter/material.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Mentions légales')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mentions légales — Wordesia', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Text('Dernière mise à jour : 18 novembre 2025', style: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor)),
                const SizedBox(height: 16),

                _h('Éditeur'),
                _p('Wordesia est éditée par Mahugnon Services Ltd, société enregistrée au Royaume-Uni.\n'
                    'Adresse : 20 Wenlock Road, London, N1 7GU, United Kingdom\n'
                    'Contact : support@wordesia.com\n'
                    'Téléphone : +44 7492 804164\n'
                    'N° d’enregistrement : 16010860'),

                _h('Directeur de publication'),
                _p('Mahugnon Elie Soglo'),

                _h('Propriété intellectuelle'),
                _p('Les marques, logos, textes, images, audios, vidéos et bases de données de Wordesia sont protégés par le droit d’auteur et le droit des marques. '
                    'Toute reproduction, même partielle, est interdite sans autorisation écrite de Mahugnon Services Ltd.'),

                _h('Signalement'),
                _p('Pour signaler un contenu ou un problème technique : support@wordesia.com'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _h(String text) => Padding(
    padding: const EdgeInsets.only(top: 16, bottom: 6),
    child: Text(text, style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700)),
  );

  static Widget _p(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(text, style: const TextStyle(fontSize: 15, height: 1.5)),
  );
}
