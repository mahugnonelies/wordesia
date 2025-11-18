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
                Text(
                  'Conditions d’Utilisation – Wordesia Mahelso',
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
                  'Bienvenue dans Wordesia Mahelso, une application '
                      'd’apprentissage de vocabulaire en anglais utilisant '
                      'l’intelligence artificielle, disponible sur Android. En '
                      'installant ou en utilisant l’application, vous acceptez '
                      'pleinement les présentes Conditions d’Utilisation.\n\n'
                      'Si vous n’acceptez pas ces Conditions, veuillez ne pas '
                      'utiliser l’application.',
                ),

                _h('1. Présentation du service'),
                _p(
                  'Wordesia Mahelso est une application éducative permettant '
                      'aux utilisateurs :\n'
                      '• d’apprendre des mots d’anglais générés quotidiennement '
                      'par IA ;\n'
                      '• d’écouter des audios IA (via ElevenLabs ou autres '
                      'services) ;\n'
                      '• de pratiquer à travers différents exercices et quiz ;\n'
                      '• d’accéder à un suivi de progression, des statistiques et '
                      'un historique d’apprentissage ;\n'
                      '• de bénéficier d’un apprentissage avancé au moyen d’un '
                      'abonnement premium.\n\n'
                      'L’accès complet à certaines fonctionnalités nécessite un '
                      'abonnement payant via Google Play ou, dans certains pays, '
                      'via FedaPay.',
                ),

                _h('2. Compte utilisateur'),
                _p(
                  'Pour accéder au service, l’utilisateur doit créer un compte '
                      'via une authentification par OTP (One-Time Password). '
                      'Aucun mot de passe permanent n’est stocké ; la connexion se '
                      'fait avec un code temporaire reçu par e-mail.\n\n'
                      'L’utilisateur s’engage à :\n'
                      '• fournir des informations exactes ;\n'
                      '• ne pas usurper l’identité d’un tiers ;\n'
                      '• utiliser l’application conformément à la loi.\n\n'
                      'Le non-respect de ces engagements peut entraîner une '
                      'suspension ou une suppression du compte.',
                ),

                _h('3. Abonnements et paiement'),
                _p(
                  'Certaines fonctionnalités sont disponibles uniquement avec '
                      'un abonnement Premium, proposé via Google Play Billing ou, '
                      'dans certaines régions, via FedaPay pour les paiements '
                      'locaux.',
                ),

                _p(
                  '3.1. Types d’abonnements\n'
                      'Selon votre pays, Wordesia Mahelso peut proposer :\n'
                      '• un abonnement mensuel ;\n'
                      '• un abonnement annuel ;\n'
                      '• une période d’essai gratuite (si disponible).',
                ),

                _p(
                  '3.2. Paiement et facturation\n'
                      'Les paiements sont traités :\n'
                      '• soit exclusivement par Google Play (Google Play Billing) ;\n'
                      '• soit, dans certains pays, par FedaPay pour les paiements '
                      'en monnaie locale.\n\n'
                      'L’éditeur de Wordesia Mahelso ne collecte ni n’enregistre '
                      'aucune donnée bancaire complète. Toutes les informations de '
                      'paiement sont gérées par Google Play ou FedaPay '
                      'conformément à leurs propres conditions d’utilisation et '
                      'politiques de confidentialité.',
                ),

                _p(
                  '3.3. Renouvellement automatique\n'
                      'Les abonnements sont renouvelés automatiquement, sauf '
                      'résiliation avant la date de renouvellement. Vous pouvez :\n'
                      '• pour les abonnements Google Play : gérer ou annuler votre '
                      'abonnement via Google Play → Paiements et abonnements → '
                      'Abonnements ;\n'
                      '• pour les abonnements payés via FedaPay : Contacter '
                      'notre support à support@wordesia.com.',
                ),

                _p(
                  '3.4. Annulation et remboursement\n'
                      'Pour les abonnements souscrits via Google Play, toute '
                      'demande de remboursement doit être effectuée via le support '
                      'Google Play : https://support.google.com/googleplay\n\n'
                      'Pour les abonnements payés via FedaPay, les demandes '
                      'd’annulation ou de remboursement doivent être adressées à : '
                      'support@wordesia.com. Les remboursements éventuels sont '
                      'étudiés au cas par cas, conformément à la législation '
                      'applicable et à notre politique interne.',
                ),

                _h('4. Contenu Premium'),
                _p(
                  'Les abonnés bénéficient notamment de :\n'
                      '• mots supplémentaires du jour ;\n'
                      '• exercices avancés ;\n'
                      '• statistiques complètes ;\n'
                      '• historique complet d’apprentissage ;\n'
                      '• accès prioritaire aux nouvelles fonctionnalités ;\n'
                      '• génération accrue de contenus via IA.\n\n'
                      'Ces fonctionnalités peuvent évoluer au fil du temps.',
                ),

                _h('5. Usage autorisé'),
                _p(
                  'L’utilisateur s’engage à ne pas :\n'
                      '• détourner l’application de son usage éducatif ;\n'
                      '• tricher ou manipuler les résultats et statistiques ;\n'
                      '• tenter d’accéder aux zones administrateur ou internes ;\n'
                      '• décompiler, copier ou redistribuer l’application ou son '
                      'code ;\n'
                      '• utiliser Wordesia Mahelso pour des activités illégales ou '
                      'contraires aux lois en vigueur.\n\n'
                      'Toute violation de ces règles peut conduire à une '
                      'suspension immédiate du compte.',
                ),

                _h('6. Propriété intellectuelle'),
                _p(
                  'Tous les éléments de Wordesia Mahelso — interface, textes, '
                      'audios, images, algorithmes et contenus générés — sont '
                      'protégés par le droit d’auteur et/ou d’autres droits de '
                      'propriété intellectuelle.\n\n'
                      'L’utilisateur dispose uniquement d’un droit d’usage '
                      'personnel et non exclusif. Toute reproduction, '
                      'modification, diffusion ou exploitation non autorisée est '
                      'strictement interdite.',
                ),

                _h('7. Contenus générés par IA'),
                _p(
                  'Certaines données (mots, images, phrases, audios) sont '
                      'générées automatiquement via des services tiers comme '
                      'OpenAI ou ElevenLabs.\n\n'
                      'L’utilisateur reconnaît que :\n'
                      '• ces contenus peuvent contenir des erreurs ou approximations ;\n'
                      '• l’éditeur n’est pas responsable de l’exactitude '
                      'linguistique des contenus générés par IA ;\n'
                      '• l’usage de ces contenus reste strictement éducatif et '
                      'informatif.',
                ),

                _h('8. Sécurité et responsabilité'),
                _p(
                  'Wordesia Mahelso est fourni “tel quel” sans garantie '
                      'expresse ou implicite. L’éditeur n’est responsable ni des '
                      'pertes de données, ni d’un usage incorrect de '
                      'l’application, ni d’une interruption du service causée par :\n'
                      '• une panne serveur ;\n'
                      '• un problème réseau ;\n'
                      '• un dysfonctionnement lié à des fournisseurs tiers '
                      '(OpenAI, ElevenLabs, Supabase, Google, FedaPay) ;\n'
                      '• tout autre événement indépendant de sa volonté.\n\n'
                      'L’utilisateur reste responsable de son équipement, de sa '
                      'connexion Internet et de l’usage qu’il fait de '
                      'l’application.',
                ),

                _h('9. Suspension et suppression de compte'),
                _p(
                  'Nous pouvons suspendre ou supprimer un compte utilisateur si :\n'
                      '• une activité frauduleuse est détectée ;\n'
                      '• un abus des services IA ou des fonctionnalités est '
                      'constaté ;\n'
                      '• l’utilisateur viole les présentes Conditions '
                      'd’Utilisation ;\n'
                      '• la loi ou une autorité compétente l’exige.\n\n'
                      'L’utilisateur peut demander la suppression de son compte en '
                      'contactant notre support.',
                ),

                _h('10. Protection des données'),
                _p(
                  'Le traitement des données personnelles et techniques est '
                      'expliqué en détail dans notre Politique de Confidentialité, '
                      'accessible à l’adresse suivante :\n'
                      'https://www.wordesia.com/#/privacy_page\n\n'
                      'En utilisant l’application, vous acceptez également les '
                      'termes de cette Politique de Confidentialité.',
                ),

                _h('11. Modifications des Conditions'),
                _p(
                  'Nous pouvons mettre à jour les présentes Conditions '
                      'd’Utilisation à tout moment afin de refléter des '
                      'évolutions du service, des exigences légales ou des '
                      'améliorations de l’application.\n\n'
                      'Les modifications importantes pourront être notifiées dans '
                      'l’application. La version la plus récente reste toujours '
                      'accessible depuis l’écran dédié aux Conditions '
                      'd’Utilisation.',
                ),

                _h('12. Contact'),
                _p(
                  'Pour toute question concernant ces Conditions '
                      'd’Utilisation ou le fonctionnement de Wordesia Mahelso, '
                      'vous pouvez nous contacter :\n'
                      '• Email : support@wordesia.com\n'
                      '• Site : https://www.wordesia.com',
                ),

                const SizedBox(height: 16),
                _note(
                  context,
                  'Ces conditions sont conçues pour être compatibles avec les '
                      'règles Google Play et les bonnes pratiques juridiques en '
                      'matière de services numériques, de paiements (Google Play, '
                      'FedaPay) et d’abonnements.',
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
