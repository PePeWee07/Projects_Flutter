import 'package:flutter/material.dart';
import 'package:provider_counter/pages/page1.dart';
import 'package:provider_counter/pages/page2.dart';
import 'package:provider_counter/pages/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  final List<Widget> _pages = const <Widget>[
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _itemsNavigatorBar,
      )

    );
  }

  List<BottomNavigationBarItem> get _itemsNavigatorBar {
    return <BottomNavigationBarItem>[
        _btnsNavigatonBar('Page 1'),
        _btnsNavigatonBar('Page 2'),
        _btnsNavigatonBar('Page 3'),
      ];
  }

  BottomNavigationBarItem _btnsNavigatonBar(String namePage) {
    return BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        label: namePage
      );
  }
}