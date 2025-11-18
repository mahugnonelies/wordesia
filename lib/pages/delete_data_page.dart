
import 'package:flutter/material.dart';

class DeleteDataPage extends StatelessWidget {
  const DeleteDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Suppression des données')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Politique de suppression des données — Wordesia Mahelso',
                  style: theme.textTheme.headlineSmall
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8),
                Text(
                  'Dernière mise à jour : 18 novembre 2025',
                  style: theme.textTheme.bodySmall
                      ?.copyWith(color: theme.hintColor),
                ),
                const SizedBox(height: 16),

                _p(
                  'Cette politique explique comment les utilisateurs peuvent '
                      'demander la suppression de leurs données personnelles dans '
                      'Wordesia Mahelso, conformément au RGPD, UK GDPR, CCPA et aux '
                      'exigences Google Play concernant la suppression des données.',
                ),

                _h('1. Qui peut demander la suppression ?'),
                _p(
                  'Tout utilisateur disposant d’un compte Wordesia peut '
                      'demander :\n'
                      '• la suppression complète de son compte ;\n'
                      '• la suppression de toutes ses données personnelles ;\n'
                      '• la suppression de données locales stockées sur '
                      'l’appareil.\n\n'
                      'La suppression ne nécessite aucune justification.',
                ),

                _h('2. Données concernées par la suppression'),
                _p(
                  'La suppression inclut notamment :\n'
                      '• l’adresse e-mail utilisée pour le compte ;\n'
                      '• l’identifiant utilisateur (User ID) ;\n'
                      '• toutes les données d’apprentissage (mots appris, quiz, '
                      'scores, progression, jours actifs) ;\n'
                      '• les préférences et statistiques ;\n'
                      '• les journaux techniques liés à l’utilisateur.\n\n'
                      'Données non concernées :\n'
                      '• données agrégées anonymes (impossibles à relier à un '
                      'utilisateur) ;\n'
                      '• données nécessaires au respect d’obligations légales '
                      '(comptabilité, lutte anti-fraude).',
                ),

                _h('3. Comment demander la suppression ?'),
                _p(
                  'Vous pouvez demander la suppression de vos données à tout '
                      'moment en contactant :\n\n'
                      '📧 support@wordesia.com\n\n'
                      'Votre demande sera prise en charge sous 7 jours ouvrables.',
                ),

                _h('4. Délais de suppression'),
                _p(
                  'Une fois la demande confirmée :\n'
                      '• suppression définitive des données actives sous 30 jours ;\n'
                      '• purge complète des sauvegardes sous 90 jours ;\n'
                      '• aucune récupération n’est possible après suppression.\n\n'
                      'Ces délais sont conformes aux bonnes pratiques de sécurité '
                      'et aux exigences Google Play / RGPD.',
                ),

                _h('5. Conséquences de la suppression'),
                _p(
                  '• perte totale et définitive de la progression ;\n'
                      '• perte des statistiques et historiques ;\n'
                      '• perte de l’accès aux fonctionnalités premium ;\n'
                      '• l’utilisateur peut recréer un nouveau compte ultérieurement '
                      's’il le souhaite.',
                ),

                _h('6. Conservation minimale'),
                _p(
                  'Certaines données peuvent être conservées temporairement '
                      '(maximum 6 mois) uniquement pour :\n'
                      '• lutter contre les fraudes ;\n'
                      '• répondre à des obligations comptables ou légales ;\n'
                      '• garantir la sécurité des systèmes.\n\n'
                      'Ces données ne sont jamais utilisées à des fins marketing.',
                ),

                _h('7. Contact'),
                _p(
                  'Mahugnon Services Ltd\n'
                      '20 Wenlock Road, London, N1 7GU, United Kingdom\n'
                      '📧 support@wordesia.com',
                ),

                const SizedBox(height: 16),
                _note(
                  context,
                  'Cette politique est conforme au RGPD (article 17 – droit à '
                      'l’effacement), UK GDPR, CCPA, et aux règles Google Play sur '
                      'la suppression des données utilisateurs.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _h(String text) => Padding(
    padding: const EdgeInsets.only(top: 16, bottom: 6),
    child: Text(
      text,
      style: const TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700),
    ),
  );

  static Widget _p(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 4),
    child: Text(
      text,
      style: const TextStyle(fontSize: 15, height: 1.5),
    ),
  );

  static Widget _note(BuildContext context, String text) => Text(
    text,
    style: Theme.of(context)
        .textTheme
        .bodySmall
        ?.copyWith(color: Theme.of(context).hintColor),
  );
}
