import 'package:flutter/material.dart';
import 'package:frontend/src/pages/groups_page.dart';
import 'package:frontend/src/pages/lists_page.dart';
import 'package:frontend/src/pages/recipes_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        indicatorColor: Colors.greenAccent,
        selectedIndex: currentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Listes',
          ),
          NavigationDestination(
            icon: Icon(Icons.article),
            label: 'Recettes',
          ),
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Groupes',
          ),
        ],
      ),
      body: <Widget>[
        const ListsPage(),
        const RecipesPage(),
        const GroupsPage()
      ][currentIndex],
    );
  }
}
