
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Wordesia'),
      //actions: [
      //  TextButton(onPressed: () => Navigator.pushNamed(context, '/privacy_page'), child: const Text('Confidentialité')),
      //  TextButton(onPressed: () => Navigator.pushNamed(context, '/terms_page'), child: const Text('Conditions')),
      // TextButton(onPressed: () => Navigator.pushNamed(context, '/legal'), child: const Text('Mentions')),
      //  TextButton(onPressed: () => Navigator.pushNamed(context, '/delete-data'), child: const Text('Suppression')),
      //  const SizedBox(width: 6),
      // ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
