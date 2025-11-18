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
                Text(
                  'Politique de confidentialité – Wordesia Mahelso',
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

                _p('Bienvenue sur Wordesia, une application éducative de Mahugnon Services Ltd, dédiée à l’apprentissage progressif de la langue anglaise. '
                    'Cette politique décrit la manière dont nous collectons, utilisons, stockons et protégeons vos données personnelles, conformément au RGPD (UE), au CCPA (Californie) et aux autres lois internationales.'),

                _h('0. Responsable du traitement'),
                _p('• Société : Mahugnon Services Ltd\n'
                    '• Siège social : 20 Wenlock Road, London, N1 7GU, United Kingdom\n'
                    '• Contact : support@wordesia.com\n'
                    '• Numéro d’enregistrement : 16010860'),

                _h('1. Informations que nous collectons'),
                _p(
                  'Nous collectons uniquement les données nécessaires au '
                      'fonctionnement de l’application et à l’amélioration de '
                      'l’apprentissage.',
                ),

                _h('1.1. Adresse e-mail (via OTP)'),
                _p(
                  'Lorsque vous vous connectez, nous collectons votre adresse '
                      'e-mail pour :\n'
                      '• créer votre compte utilisateur ;\n'
                      '• vous authentifier via un code OTP ;\n'
                      '• synchroniser votre progression ;\n'
                      '• sécuriser l’accès à vos données.\n\n'
                      'Aucune autre information personnelle n’est recueillie.',
                ),

                _h('1.2. Identifiant utilisateur (User ID – Supabase)'),
                _p(
                  'Un identifiant unique est généré automatiquement par notre '
                      'service d’authentification. Il permet :\n'
                      '• d’associer vos données d’apprentissage à votre compte ;\n'
                      '• de restaurer vos progrès en cas de changement d’appareil ;\n'
                      '• de sécuriser vos sessions.',
                ),

                _h('1.3. FCM Token (notifications)'),
                _p(
                  'Nous collectons le token de notification de votre appareil '
                      'pour :\n'
                      '• envoyer des rappels liés à l’apprentissage ;\n'
                      '• vous prévenir de vos séries quotidiennes ;\n'
                      '• vous informer en cas de nouvelles fonctionnalités '
                      'importantes.\n\n'
                      'Ce token n’est jamais partagé ni utilisé à des fins '
                      'marketing.',
                ),

                _h('1.4. Données d’apprentissage'),
                _p(
                  'Nous collectons uniquement les données pédagogiques '
                      'suivantes :\n'
                      '• mots appris ;\n'
                      '• réponses correctes / incorrectes ;\n'
                      '• quiz complétés ;\n'
                      '• étapes validées ;\n'
                      '• mots difficiles / maîtrisés ;\n'
                      '• jours actifs / séries quotidiennes ;\n'
                      '• progression globale.\n\n'
                      'Ces données sont nécessaires au fonctionnement de '
                      'l’application.',
                ),

                _h('1.5. Images générées automatiquement'),
                _p(
                  'Les images illustrant les mots sont générées '
                      'automatiquement par une IA.\n\n'
                      'Les utilisateurs ne peuvent pas envoyer leurs propres '
                      'images. Seuls les administrateurs disposent d’un accès '
                      'interne pour remplacer une image incorrecte.',
                ),

                _h('1.6. Journaux de plantage & diagnostics'),
                _p(
                  'Nous collectons :\n'
                      '• des journaux de plantage (crash logs) ;\n'
                      '• des rapports d’erreur ;\n'
                      '• des informations techniques de fonctionnement.\n\n'
                      'Ces données nous permettent de corriger les bugs, '
                      'd’améliorer les performances et d’assurer la stabilité de '
                      'l’application. Nous ne collectons pas les contenus des '
                      'fichiers, photos ou vidéos de votre appareil.',
                ),

                _h('2. Données que nous NE collectons pas'),
                _p(
                  'Nous ne collectons jamais :\n'
                      '• nom et prénom ;\n'
                      '• adresse postale ;\n'
                      '• numéro de téléphone ;\n'
                      '• contacts ;\n'
                      '• photos / vidéos personnelles ;\n'
                      '• fichiers personnels ;\n'
                      '• données de santé ;\n'
                      '• données financières ;\n'
                      '• données de localisation ;\n'
                      '• données sensibles (religion, orientation, opinions '
                      'politiques, etc.).\n\n'
                      'Nous ne collectons que ce qui est strictement nécessaire.',
                ),

                _h('3. Partage des données'),
                _p(
                  'Nous ne partageons aucune donnée avec des tiers commerciaux, '
                      'publicitaires ou partenaires externes à des fins de '
                      'prospection ou de vente.',
                ),
                _p(
                  'Les seules plateformes pouvant traiter certaines données '
                      'sont :\n'
                      '• Supabase : hébergement sécurisé des comptes et des '
                      'données d’apprentissage ;\n'
                      '• Google Firebase (FCM) : envoi de notifications push (seul '
                      'un token anonyme est utilisé) ;\n'
                      '• OpenAI / ElevenLabs : génération de contenus internes à '
                      'l’application (texte, images, audio).\n\n'
                      'Aucune donnée personnelle identifiante de l’utilisateur '
                      'n’est envoyée à ces services.',
                ),

                _h('4. Utilisation des données'),
                _p(
                  'Vos données sont utilisées pour :\n'
                      '• créer et gérer votre compte ;\n'
                      '• personnaliser votre apprentissage ;\n'
                      '• générer votre progression quotidienne ;\n'
                      '• envoyer des notifications de rappel ;\n'
                      '• améliorer la stabilité de l’application ;\n'
                      '• corriger les bugs techniques.\n\n'
                      'Elles ne sont jamais vendues ni utilisées à des fins '
                      'publicitaires.',
                ),

                _h('5. Stockage et sécurité des données'),
                _p(
                  'Vos données sont stockées en toute sécurité via :\n'
                      '• Supabase, qui héberge les bases de données de manière '
                      'sécurisée ;\n'
                      '• le chiffrement TLS lors du transfert des données ;\n'
                      '• des politiques strictes d’accès interne ;\n'
                      '• un accès administrateur limité et contrôlé.\n\n'
                      'Nous appliquons les normes de sécurité recommandées par '
                      'Google Play, le RGPD et les bonnes pratiques du secteur.',
                ),

                _h('6. Durée de conservation'),
                _p(
                  'Nous conservons vos données tant que votre compte existe. '
                      'Vous pouvez :\n'
                      '• demander la suppression de votre compte ;\n'
                      '• demander la suppression de toutes vos données ;\n'
                      '• cesser d’utiliser l’application à tout moment.\n\n'
                      'En cas de suppression, toutes vos données seront '
                      'définitivement supprimées de nos systèmes principaux.',
                ),

                _h('7. Suppression des données'),
                _p(
                  'Vous pouvez demander la suppression de votre compte et de '
                      'vos données en nous contactant à :\n'
                      'support@wordesia.com\n\n'
                      'Une suppression complète inclut :\n'
                      '• l’e-mail associé au compte ;\n'
                      '• l’identifiant utilisateur ;\n'
                      '• la progression et l’historique ;\n'
                      '• les données d’apprentissage ;\n'
                      '• les journaux associés au compte.',
                ),

                _h('8. Droits des utilisateurs (RGPD)'),
                _p(
                  'Conformément au RGPD, vous pouvez à tout moment :\n'
                      '• accéder à vos données ;\n'
                      '• demander leur correction ;\n'
                      '• demander leur suppression ;\n'
                      '• demander leur portabilité ;\n'
                      '• limiter le traitement de certaines données ;\n'
                      '• retirer votre consentement lorsque celui-ci est requis.\n\n'
                      'Pour exercer ces droits, vous pouvez nous contacter à :\n'
                      'support@wordesia.com',
                ),

                _h('9. Notifications push'),
                _p(
                  'Les notifications push sont utilisées pour :\n'
                      '• des rappels d’apprentissage ;\n'
                      '• des informations sur vos séries quotidiennes ;\n'
                      '• des notifications importantes concernant de nouvelles '
                      'fonctionnalités.\n\n'
                      'Vous pouvez désactiver les notifications à tout moment dans '
                      'les réglages de votre appareil.',
                ),

                _h('10. Enfants'),
                _p(
                  'Wordesia Mahelso est destiné à un public à partir de 13 ans. '
                      'Nous ne collectons pas sciemment de données personnelles '
                      'd’enfants de moins de 13 ans. Si vous pensez qu’un enfant '
                      'de moins de 13 ans utilise l’application avec des données '
                      'personnelles, veuillez nous contacter afin que nous puissions '
                      'supprimer ces informations.',
                ),

                _h('11. Modifications de la politique'),
                _p(
                  'Nous pouvons mettre à jour cette politique de confidentialité '
                      'si nécessaire. La date de mise à jour sera toujours '
                      'indiquée en haut de cette page. Nous vous invitons à la '
                      'consulter régulièrement.',
                ),

                _h('12. Contact'),
                _p(
                  'Pour toute question concernant cette politique de '
                      'confidentialité ou le traitement de vos données, vous pouvez '
                      'nous contacter :\n'
                      '• Email : support@wordesia.com\n'
                      '• Site : https://www.wordesia.com',
                ),

                const SizedBox(height: 16),
                _note(
                  context,
                  'Cette politique est conçue pour être conforme aux '
                      'exigences du RGPD, des politiques Google Play et aux '
                      'bonnes pratiques internationales en matière de protection '
                      'des données.',
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
      style: const TextStyle(
        fontSize: 16.5,
        fontWeight: FontWeight.w700,
      ),
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
