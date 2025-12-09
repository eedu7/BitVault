import 'package:bitvault/screen/add_new_screen.dart';
import 'package:bitvault/screen/edit_screen.dart';
import 'package:bitvault/screen/list_screen.dart';
import 'package:bitvault/screen/search_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  // List of Screens
  final List<Widget> _screens = [
    const SearchScreen(),
    const AddNewScreen(),
    const EditScreen(),
    const ListScreen(),
  ];

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
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
            selectedIcon: Icon(Icons.search_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.add),
            label: 'Add',
            selectedIcon: Icon(Icons.add_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.edit),
            label: 'Edit',
            selectedIcon: Icon(Icons.edit_outlined),
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'List',
            selectedIcon: Icon(Icons.list_outlined),
          ),
        ],
      ),
    );
  }
}
