import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';

import '../screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = const [
    CategoriesScreen(),
    Favorites()
  ];

  final List<Map<String, dynamic>> _pages2 = const [
    { 'page': CategoriesScreen(), 'title': 'Categories' },
    { 'page': Favorites(), 'title': 'Your Favorite' }
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages2[_selectedPageIndex]['title']),
        // bottom: const TabBar(
        //   tabs: <Widget>[Tab(icon: Icon(Icons.category), text: 'Categories'), Tab(icon: Icon(Icons.star), text: 'Favorites')],
        // ),
      ),
      body: _pages2[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.category), label: 'Categories', backgroundColor: Theme.of(context).primaryColor ),
          BottomNavigationBarItem(icon: const Icon(Icons.star), label: 'Favorites', backgroundColor: Theme.of(context).primaryColor )
        ],
      ),
    );
  }
}

// return DefaultTabController(
// length: 2,
// initialIndex: 0,
// child: Scaffold(
// appBar: AppBar(
// title: const Text('Meals'),
// bottom: const TabBar(
// tabs: <Widget>[Tab(icon: Icon(Icons.category), text: 'Categories'), Tab(icon: Icon(Icons.star), text: 'Favorites')],
// ),
// ),
// body: null,
// ),
//
// );
// }
// }

// child: Scaffold(
//   appBar: AppBar(
//     title: const Text('Meals'),
//     bottom: const TabBar(
//       tabs: <Widget>[Tab(icon: Icon(Icons.category), text: 'Categories'), Tab(icon: Icon(Icons.star), text: 'Favorites')],
//     ),
//   ),
//   body: const TabBarView(
//     children: <Widget>[
//       CategoriesScreen(),
//       Favorites()
//     ],
//   ),
// ),