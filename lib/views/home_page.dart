

import 'package:famliciuos/views/favorites_view.dart';
import 'package:famliciuos/views/timeline.dart';
import 'package:famliciuos/views/chats_view.dart';
import 'package:famliciuos/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';


class Homeview extends StatefulWidget {
  const Homeview({ Key? key }) : super(key: key);

  @override
  _HomeviewState createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {

  int _currentIndex = 0;

 final List<Widget> _views =[
   TimelineView(),
   ChatViews(),
   FavoriteView(),
   ProfileView()


 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: _views,
      index: _currentIndex),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
             _currentIndex = index;
          });
        },

        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.history), label: "Timeline" ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.comment_dots), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.heart),label: 'Favorite' ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.user),label: 'Profile'),
        ]
      ),
      
    );
  }
}