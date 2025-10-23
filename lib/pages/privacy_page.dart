
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Politique de confidentialité')),
    body: const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        child: SelectionArea(
          child: Text(
            'Politique de confidentialité — Wordesia\n\n'
            'Dernière mise à jour : 2025-10-23\n\n'
            '1. Responsable du traitement — Mahugnon Services Ltd, 71–75 Shelton Street, London WC2H 9JQ, UK — privacy@wordesia.com — N° 149XXXXXX.\n\n'
            '2. Données collectées — compte (e-mail, mot de passe chiffré), usage (progression, scores), technique (appareil, OS, identifiant anonyme), vocal (optionnel, non conservé).\n\n'
            '3. Finalités — fournir/améliorer le service, sauvegarder progression/abonnements, adapter le contenu, support et sécurité.\n\n'
            '4. Sous-traitants — Supabase (hébergement), OpenAI (texte), ElevenLabs (audio), Stripe/Stores (paiements), conformes RGPD.\n\n'
            '5. Sécurité & conservation — chiffrement en transit et au repos, suppression 6 mois après inactivité du compte.\n\n'
            '6. Droits — accès, rectification, suppression, portabilité, retrait de consentement : privacy@wordesia.com.\n\n'
            '7. Transferts internationaux — Clauses contractuelles types (UE) / garanties équivalentes.\n\n'
            '8. Suppression des données — voir la Politique de suppression (délai 30 jours, purge sauvegardes 90 jours).\n\n'
            '9. Modifications — la version à jour est publiée sur cette page.',
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ),
    ),
  );
}
