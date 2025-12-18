import 'package:bitvault/screen/main/nav_items.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(8.0),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/export');
          },
          icon: const Icon(Icons.share_outlined),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/backup');
            },
            icon: const Icon(Icons.save_alt),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: mainNavItems.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: mainNavItems
            .map(
              (item) => NavigationDestination(
                icon: Icon(item.icon),
                label: item.label,
                selectedIcon: Icon(item.selectedIcon),
              ),
            )
            .toList(),
      ),
    );
  }
}
