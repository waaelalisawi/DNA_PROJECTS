import 'package:flutter/material.dart';
import 'package:insta_second_try/reels.dart';
import 'package:insta_second_try/search.dart';

import 'account.dart';
import 'home.dart';
import 'shop.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex=0;
  void _navigateBottonNavBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  //diffrent pages to navigate

  final List<Widget> _children=[
    UserHome(),
    Usersearch(),
    Reels(),
    Shop(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:_children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottonNavBar ,
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon:Icon(Icons.search),label: 'saerch'),
          BottomNavigationBarItem(icon:Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon:Icon(Icons.shop),label: 'shop'),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: 'account'),

        ],
      ),


    );
  }
}
