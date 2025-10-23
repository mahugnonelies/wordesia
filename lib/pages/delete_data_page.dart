
import 'package:flutter/material.dart';

class DeleteDataPage extends StatelessWidget {
  const DeleteDataPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Suppression des données')),
    body: const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 12, 16, 32),
        child: SelectionArea(
          child: Text(
            'Politique de suppression des données — Wordesia\n\n'
            'Dernière mise à jour : 2025-10-23\n\n'
            '1. Qui peut demander ? — Tout utilisateur disposant d\'un compte Wordesia.\n\n'
            '2. Données concernées — compte (e-mail), progression, historiques, données techniques ; données vocales non conservées.\n\n'
            '3. Comment supprimer — dans l\'app (Paramètres → Compte → Supprimer), via formulaire web, ou par e-mail à privacy@wordesia.com.\n\n'
            '4. Délais — suppression sous 30 jours ; purge des sauvegardes sous 90 jours.\n\n'
            '5. Conséquences — perte de la progression et de l\'accès premium.\n\n'
            '6. Conservation minimale — obligations légales/comptables ou sécurité (max. 6 mois), sans réutilisation commerciale.\n\n'
            '7. Contact — privacy@wordesia.com',
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ),
    ),
  );
}
