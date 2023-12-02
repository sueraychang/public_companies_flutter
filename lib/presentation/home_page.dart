import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';

class HomePage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const HomePage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.domain),
            label: context.l10n.bottomNavigationItemIndustryTitle,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.star_border_outlined),
            label: context.l10n.bottomNavigationItemCollectionTitle,
          ),
        ],
        onTap: (value) {
          navigationShell.goBranch(
            value,
            initialLocation: value == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
