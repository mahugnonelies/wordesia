import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Politique de confidentialité')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: SelectionArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Politique de confidentialité — Wordesia', style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 8),
                Text('Dernière mise à jour : 23 octobre 2025', style: theme.textTheme.bodySmall?.copyWith(color: theme.hintColor)),
                const SizedBox(height: 16),

                _p('Bienvenue sur Wordesia, une application éducative de Mahugnon Services Ltd, dédiée à l’apprentissage progressif de la langue anglaise. '
                    'Cette politique décrit la manière dont nous collectons, utilisons, stockons et protégeons vos données personnelles, conformément au RGPD (UE), au CCPA (Californie) et aux autres lois internationales.'),

                _h('1. Responsable du traitement'),
                _p('• Société : Mahugnon Services Ltd\n'
                    '• Siège social : 20 Wenlock Road, London, N1 7GU, United Kingdom\n'
                    '• Contact : support@wordesia.com\n'
                    '• Numéro d’enregistrement : 16010860'),

                _h('2. Données collectées'),
                _p('Nous collectons uniquement les données nécessaires au bon fonctionnement :\n'
                    'a) Données de compte : e-mail, mot de passe chiffré, langue, niveau/préférences.\n'
                    'b) Données d’usage : historique des mots/leçons, scores, progression, date de dernière activité.\n'
                    'c) Données techniques : version de l’app, type d’appareil, OS, identifiant anonyme de compte.\n'
                    'd) Données vocales (optionnelles) : enregistrements temporaires lors des exercices de prononciation, traités localement et non conservés.'),

                _h('3. Finalités du traitement'),
                _p('• Fournir et améliorer les fonctionnalités de Wordesia\n'
                    '• Sauvegarder progression et abonnements\n'
                    '• Adapter le contenu pédagogique\n'
                    '• Sécurité et bon fonctionnement du service\n'
                    '• Support et assistance utilisateur\n\n'
                    'Nous ne revendons ni ne partageons vos données à des fins commerciales.'),

                _h('4. Sous-traitants techniques'),
                _p('Nous faisons appel à des prestataires conformes aux standards de sécurité :\n'
                    '• Supabase : hébergement des comptes et sauvegardes (UE)\n'
                    '• OpenAI : génération de contenus linguistiques (texte, exemples)\n'
                    '• ElevenLabs : synthèse vocale IA (audio)\n'
                    '• Stripe / Play Store / App Store : gestion des paiements\n\n'
                    'Chaque partenaire respecte le RGPD et ne conserve pas de données personnelles identifiantes au-delà de la nécessité contractuelle.'),

                _h('5. Sécurité et conservation'),
                _p('• Stockage sur serveurs sécurisés (chiffrement en repos)\n'
                    '• Transmission chiffrée (HTTPS / TLS)\n'
                    '• Conservation pendant la durée d’utilisation du compte\n'
                    '• Suppression complète 6 mois après inactivité'),

                _h('6. Vos droits'),
                _p('Vous pouvez : accéder, rectifier, supprimer, exporter vos données, et retirer votre consentement à tout moment.\n'
                    'Contact : privacy_page@wordesia.com'),

                _h('7. Transferts internationaux'),
                _p('Si des données sont traitées hors de votre pays, nous appliquons les Clauses Contractuelles Types (UE) ou des garanties équivalentes.'),

                _h('8. Politique de suppression des données (résumé)'),
                _p('Vous pouvez supprimer votre compte depuis l’app : Paramètres → Compte → Supprimer mon compte, ou via www.wordesia.com/delete-data, ou par e-mail à support@wordesia.com. '
                    'La suppression intervient sous 30 jours (puis purge des sauvegardes sous 90 jours).'),

                _h('9. Modifications'),
                _p('Nous pouvons mettre à jour cette politique. La version la plus récente est disponible sur www.wordesia.com/privacy_page.'),

                const SizedBox(height: 16),
                _note(context, 'Cette politique est conçue pour être conforme aux exigences du RGPD, CCPA, UK GDPR, et aux politiques Google Play / App Store.'),
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
