import 'package:flutter/material.dart';
import 'package:online_hop/pages/general_ui_item.dart';
import 'package:online_hop/pages/home_screen.dart';
import 'package:online_hop/pages/mesages_page.dart';
import 'package:online_hop/pages/profile_page.dart';
import 'package:online_hop/pages/sell_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget bodyWidget;
  List<BNBItem> bnbItems = [
    BNBItem("Home", Icons.home),
    BNBItem("Sell", Icons.plus_one),
    BNBItem("Messages", Icons.message),
    BNBItem("Profile", Icons.person_outline),
  ];

  int bnbIndex = 0;
  @override
  void initState() {
    bodyWidget = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bnbIndex,
        onTap: (b) {
          switch (b) {
            case 0:
              setState(() {
                bnbIndex = b;
                bodyWidget = HomeScreen();
              });
              break;
            case 1:
              pushRoute(context, SellPage());
              break;
            case 2:
              setState(() {
                bnbIndex = b;
                bodyWidget = MessagesPage();
              });
              break;
            case 3:
              setState(() {
                bnbIndex = b;
                bodyWidget = ProfilePage();
              });
              break;
            default:
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: List.generate(
          bnbItems.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(bnbItems[index].icon),
            title: Text(bnbItems[index].title),
          ),
        ),
      ),
    );
  }
}

class BNBItem {
  final String title;
  final IconData icon;

  BNBItem(this.title, this.icon);
}
