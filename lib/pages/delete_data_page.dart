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
                Text('Politique de suppression des données — Wordesia', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Text('Dernière mise à jour : 23 octobre 2025', style: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor)),
                const SizedBox(height: 16),

                _p('Cette politique explique comment les utilisateurs de Wordesia peuvent demander la suppression de leurs données personnelles et comment nous procédons à cette suppression, conformément au RGPD, UK GDPR, CCPA, et aux exigences Google Play / App Store.'),

                _h('1. Qui peut demander la suppression ?'),
                _p('Tout utilisateur disposant d’un compte Wordesia peut demander :\n'
                    '• La suppression complète du compte\n'
                    '• La suppression partielle (ex. historiques)\n'
                    '• La suppression de données locales sur l’appareil'),

                _h('2. Données concernées'),
                _p('• E-mail et identifiants du compte\n'
                    '• Progression, leçons, scores, préférences\n'
                    '• Données techniques liées à l’appareil\n'
                    '• Données vocales (non conservées après traitement)\n'
                    'Les données nécessaires au respect d’obligations légales (facturation, prévention de fraude) peuvent être conservées temporairement.'),

                _h('3. Méthodes de suppression'),
                _p('a) Depuis l’application : Paramètres → Compte → Supprimer mon compte (désactivation immédiate, suppression sous 30 jours).\n'
                    'b) Depuis le site : formulaire sur www.wordesia.com/delete-data\n'
                    'c) Par e-mail : support@wordesia.com (réponse sous 7 jours ouvrables, suppression confirmée sous 30 jours).'),

                _h('4. Délais et modalités'),
                _p('• Suppression définitive des bases actives sous 30 jours\n'
                    '• Purge des sauvegardes sous 90 jours\n'
                    '• Données irréversibles après suppression'),

                _h('5. Conséquences'),
                _p('• Perte de la progression et de l’accès aux contenus premium\n'
                    '• Possibilité de recréer un compte ultérieurement'),

                _h('6. Conservation minimale'),
                _p('Certaines informations peuvent être conservées temporairement à des fins comptables/légales ou de sécurité (max. 6 mois). Aucune réutilisation commerciale.'),

                _h('7. Contact'),
                _p('support@wordesia.com — Mahugnon Services Ltd - 20 Wenlock Road, London, N1 7GU, United Kingdom'),

                const SizedBox(height: 16),
                _note(context, 'Conformité : RGPD (art. 17 – droit à l’effacement), UK GDPR, CCPA, exigences Google Play et App Store.'),
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

  static Widget _note(BuildContext context, String text) =>
      Text(text, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).hintColor));
}
