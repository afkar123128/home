
import 'package:flutter/material.dart';
import 'package:home/account.dart';
import 'package:home/alarm%20clock.dart';
import 'package:home/home.dart';
import 'package:home/save.dart';

class nav_bar extends StatefulWidget {
  const nav_bar({super.key});

  @override
  State<nav_bar> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> {
  @override
  int currentindex=0;
  List<Widget>pages =[
  home() ,
  save(),
  alarmcolock(),
  acount()
  ]
  ;
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
       bottomNavigationBar:BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.indigo,
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.grey,),
        label: "home",
        
        ),
         BottomNavigationBarItem(icon: Icon(Icons.save_as,color: Colors.grey),
        label: "save"),
                 BottomNavigationBarItem(icon: Icon(Icons.alarm,color: Colors.grey),
        label: "alarmcolock"),
         BottomNavigationBarItem(icon: Icon(Icons.account_box,color: Colors.grey),
        label: "account",
        )
       ],
       ) ,
    );
  }
}