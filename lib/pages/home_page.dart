import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/topbar.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // HERO
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF0b1020), Color(0xFF0c142c)],
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Texte de présentation
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apprenez l\'anglais avec',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Wordesia',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(fontWeight: FontWeight.w800),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '4 mots par jour, exercices interactifs, dialogues guidés et révision intelligente. '
                                  'Une méthode simple, efficace et sans publicité.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.white70),
                            ),
                            const SizedBox(height: 16),
                            Wrap(spacing: 12, runSpacing: 12, children: [
                              FilledButton(
                                onPressed: () => openUrl(
                                  'https://play.google.com/store/apps/details?id=com.wordesia.app',
                                ),
                                child: const Text('Télécharger sur Android'),
                              ),
                              OutlinedButton(
                                onPressed: null,
                                child: const Text('iOS (bientôt)'),
                              ),
                            ]),
                            const SizedBox(height: 10),
                            Text(
                              'Sans publicité · Abonnement flexible · Progression sauvegardée',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      // Mockup visuel — dans un CADRE CARRÉ
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1, // carré
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF0f162e),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Colors.white.withOpacity(.08),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 20,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(8),
                                child: Image.asset(
                                  'assets/images/mockup.png',
                                  fit: BoxFit.contain, // entier et centré
                                  alignment: Alignment.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // FEATURES
            _section(
              context,
              title: 'Fonctionnalités',
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount:
                MediaQuery.of(context).size.width < 800 ? 2 : 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: const [
                  _FeatureCard(
                    title: '4 mots par jour',
                    text:
                    'Chaque jour, 4 mots avec traduction, explication, phrase d\'exemple, image et audio.',
                  ),
                  _FeatureCard(
                    title: 'Exercices progressifs',
                    text:
                    'Associer, compléter, reconstituer : entraînez tous les réflexes linguistiques.',
                  ),
                  _FeatureCard(
                    title: 'Dialogues et prononciation',
                    text:
                    'Écoutez, répétez, rôle-play et feedback immédiat sur la prononciation.',
                  ),
                  _FeatureCard(
                    title: 'Révision intelligente',
                    text:
                    'Révisions espacées, mots maîtrisés/difficiles/suivis.',
                  ),
                ],
              ),
            ),

            // 📸 CAPTURES D'ÉCRAN (12) avec ZOOM au survol (desktop/web)
            _section(
              context,
              title: 'Captures d’écran',
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final double width = constraints.maxWidth;
                  int crossAxisCount = 3; // desktop par défaut
                  if (width < 700) {
                    crossAxisCount = 1; // mobile
                  } else if (width < 1100) {
                    crossAxisCount = 2; // tablette
                  }

                  return GridView.builder(
                    itemCount: 12,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 9 / 16, // format smartphone
                    ),
                    itemBuilder: (context, index) {
                      final imagePath =
                          'assets/screenshots/screen_${index + 1}.png';
                      return _ScreenshotTile(imagePath: imagePath);
                    },
                  );
                },
              ),
            ),

            // PRICING
            _section(
              context,
              title: 'Tarifs',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(spacing: 12, runSpacing: 12, children: [
                    _Plan(
                      title: 'Wordesia',
                      price: 'Essai gratuit puis abonnement',
                      features: const [
                        'Accès complet à toutes les leçons',
                        'Sans publicité',
                        'Progression sauvegardée',
                        'Annulation à tout moment',
                      ],
                    ),
                  ]),
                  const SizedBox(height: 8),
                  Text(
                    'Le paiement est géré par Google Play / App Store. Aucune donnée de paiement n\'est traitée par Wordesia.',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // FAQ
            _section(
              context,
              title: 'FAQ',
              child: Column(
                children: const [
                  _Faq(
                    q: 'Wordesia contient-elle des publicités ?',
                    a: 'Non. Wordesia fonctionne par abonnement. Aucune publicité n\'est affichée.',
                  ),
                  _Faq(
                    q: 'L\'app fonctionne-t-elle hors ligne ?',
                    a: 'Les leçons déjà chargées restent accessibles. Certaines fonctionnalités nécessitent une connexion.',
                  ),
                  _Faq(
                    q: 'Puis-je annuler mon abonnement ?',
                    a: 'Oui, depuis votre compte Google Play / App Store avant l\'échéance.',
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _section(
      BuildContext context, {
        required String title,
        required Widget child,
      }) =>
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                child,
              ],
            ),
          ),
        ),
      );
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final String text;
  const _FeatureCard({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(text),
        ],
      ),
    ),
  );
}

class _Plan extends StatelessWidget {
  final String title;
  final String price;
  final List<String> features;
  const _Plan({
    super.key,
    required this.title,
    required this.price,
    required this.features,
  });

  @override
  Widget build(BuildContext context) => Card(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(price, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 12),
          for (final f in features)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const Icon(Icons.check_circle, color: Color(0xFF10B981)),
                  const SizedBox(width: 8),
                  Expanded(child: Text(f)),
                ],
              ),
            ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () => openUrl(
              'https://play.google.com/store/apps/details?id=com.wordesia.app',
            ),
            child: const Text('Commencer'),
          ),
        ],
      ),
    ),
  );
}

class _Faq extends StatelessWidget {
  final String q;
  final String a;
  const _Faq({super.key, required this.q, required this.a});

  @override
  Widget build(BuildContext context) => Card(
    child: ExpansionTile(
      title: Text(q),
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(a),
          ),
        ),
      ],
    ),
  );
}

/// Tuile de capture d’écran avec zoom fluide au survol (desktop/web)
class _ScreenshotTile extends StatefulWidget {
  final String imagePath;
  const _ScreenshotTile({required this.imagePath});

  @override
  State<_ScreenshotTile> createState() => _ScreenshotTileState();
}

class _ScreenshotTileState extends State<_ScreenshotTile> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: AnimatedScale(
        scale: _hover ? 1.025 : 1.0,
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            boxShadow: _hover
                ? [
              BoxShadow(
                color: Colors.black.withOpacity(.25),
                blurRadius: 16,
                offset: const Offset(0, 8),
              ),
            ]
                : null,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: const Color(0x14000000),
              alignment: Alignment.center,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.contain, // image entière, centrée
                alignment: Alignment.center,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.broken_image,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
