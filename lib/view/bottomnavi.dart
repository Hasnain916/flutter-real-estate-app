import 'package:flutter/material.dart';
import 'package:home_rent/view/accont.dart';
import 'package:home_rent/view/home.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  List pages= const[
    HomePage(),
    Profile(),
  ];

  int currentindex=0;
  void onTap(int index){
    setState(() {
      currentindex= index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar: Container(
        decoration:  BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black.withOpacity(0.2), width: 1.0))
        ),
        child: BottomNavigationBar(
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentindex,
          // selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 500,

          items: const [
            BottomNavigationBarItem(label: "Home",icon:Icon(Icons.home_outlined, size: 25,)),
            BottomNavigationBarItem(label: "Account",icon:Icon(Icons.account_circle_outlined, size: 25)),
          ],
        ),
      ),
    );
  }
}