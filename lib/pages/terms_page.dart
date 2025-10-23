
import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Conditions d\'utilisation')),
    body: const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        child: SelectionArea(
          child: Text(
            'Conditions d\'utilisation — Wordesia\n\n'
            'Dernière mise à jour : 2025-10-23\n\n'
            '1. Objet — application d\'apprentissage de l\'anglais (contenus éducatifs, dont IA).\n\n'
            '2. Compte — e-mail + mot de passe. Confidentialité des identifiants sous la responsabilité de l\'utilisateur.\n\n'
            '3. Accès — Android / iOS / Web ; maintenances possibles.\n\n'
            '4. Abonnement & paiement — via Google Play / App Store / Stripe ; renouvellement auto ; annulation avant échéance ; remboursements selon politiques du store.\n\n'
            '5. Propriété intellectuelle — © Mahugnon Services Ltd. Reproduction interdite sans autorisation écrite.\n\n'
            '6. Responsabilité — aucune garantie de résultat ; l\'utilisateur est responsable de son équipement et de sa connexion.\n\n'
            '7. Confidentialité — soumise à la Politique de confidentialité.\n\n'
            '8. Résiliation — suspension/suppression en cas d\'abus ; suppression volontaire possible depuis l\'app ou par e-mail.\n\n'
            '9. Loi applicable — droit britannique ; juridiction : Londres (sauf dispositions locales impératives).\n\n'
            '10. Contact — support@wordesia.com',
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ),
    ),
  );
}
