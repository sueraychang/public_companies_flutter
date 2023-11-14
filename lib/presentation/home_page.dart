import 'package:flutter/material.dart';
import 'package:publiccompanies/presentation/collections_page.dart';
import 'package:publiccompanies/presentation/industries_page.dart';
import 'package:publiccompanies/utils/build_context_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);
  late final List<Widget> _pages;

  @override
  String get restorationId => 'homePage';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottomNavigationCurrentIndex');
  }

  @override
  void initState() {
    super.initState();

    _pages = [
      const IndustriesPage(),
      const CollectionsPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex.value,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex.value,
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
          setState(() {
            _currentIndex.value = value;
          });
        },
      ),
    );
  }
}
