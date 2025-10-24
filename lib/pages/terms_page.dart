import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Conditions d’utilisation')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Conditions d’utilisation — Wordesia', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Text('Dernière mise à jour : 23 octobre 2025', style: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor)),
                const SizedBox(height: 16),

                _p('Ces conditions régissent l’utilisation de l’application Wordesia et du site wordesia.com, édités par Mahugnon Services Ltd. '
                    'En téléchargeant, installant ou utilisant Wordesia, vous acceptez les présentes conditions.'),

                _h('1. Objet du service'),
                _p('Wordesia propose un service numérique d’apprentissage linguistique s’appuyant sur des contenus (dont certains générés par IA) et une pédagogie interactive.'),

                _h('2. Création de compte'),
                _p('L’accès complet nécessite un compte (e-mail et mot de passe sécurisé). L’utilisateur est responsable de la confidentialité de ses identifiants.'),

                _h('3. Accès et disponibilité'),
                _p('Service disponible sur Android, iOS et Web. Wordesia peut suspendre temporairement l’accès pour maintenance ou mise à jour.'),

                _h('4. Abonnement et paiement (conditions de vente)'),
                _p('• Wordesia fonctionne sur abonnement payant.\n'
                    '• Paiements gérés par Google Play, Apple App Store ou Stripe (Wordesia ne traite pas directement vos paiements).\n'
                    '• Renouvellement automatique sauf annulation avant échéance dans votre compte store.\n'
                    '• Remboursements : selon politiques du store concerné.'),

                _h('5. Contenu et propriété intellectuelle'),
                _p('Tous les textes, images, sons, logos, bases de données et designs sont la propriété exclusive de Mahugnon Services Ltd. '
                    'Toute reproduction ou modification sans autorisation écrite est interdite. Les contenus pédagogiques sont fournis à titre éducatif et ne constituent pas un enseignement certifié.'),

                _h('6. Responsabilité'),
                _p('Wordesia s’efforce d’assurer un service fiable mais ne garantit pas l’absence d’erreurs ou d’interruption. '
                    'Aucune garantie de résultat linguistique spécifique n’est donnée. L’utilisateur est responsable de sa connexion et de son appareil.'),

                _h('7. Confidentialité et sécurité'),
                _p('L’utilisation implique l’acceptation de la Politique de confidentialité. Aucune donnée personnelle n’est utilisée à des fins publicitaires.'),

                _h('8. Résiliation'),
                _p('Mahugnon Services Ltd peut suspendre/supprimer un compte en cas de violation des présentes conditions, fraude ou usage abusif. '
                    'L’utilisateur peut supprimer son compte depuis l’app ou écrire à support@wordesia.com.'),

                _h('9. Loi applicable et juridiction'),
                _p('Droit britannique (UK). En cas de litige, compétence des tribunaux de Londres, sauf dispositions légales contraires applicables localement.'),

                _h('10. Contact'),
                _p('Support : support@wordesia.com'),

                const SizedBox(height: 16),
                _note(context, 'Les présentes conditions sont compatibles avec les règles Google Play / App Store et les cadres juridiques internationaux.'),
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
