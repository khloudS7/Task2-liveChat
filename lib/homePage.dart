import 'package:flutter/material.dart';
import 'package:task2/pages/home.dart';
import 'package:task2/pages/profile.dart';
import 'package:task2/pages/contacts.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState()=> _HomePageState();

}//end

class _HomePageState extends State<HomePage>{
  int _selectedIndex=0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _pages=[
    home(),
    contacts(),
    profile(),

  ];//end final list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon:
          Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar_sharp),
              label: "Contacts"),

          BottomNavigationBarItem(
              icon: Icon(Icons.person)
              ,label: "profile"),


        ],
      ),
    ); //end Scaffold

  }//end Widget build

}//end HomePageState class