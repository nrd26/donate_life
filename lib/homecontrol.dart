import 'package:donate_life/Components/curved_nav_bar/curved_navigation_bar.dart';
import 'package:donate_life/Screens/Donation/current_donation.dart';
import 'package:donate_life/Screens/History/control.dart';
import 'package:donate_life/Screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class HomeControl extends StatefulWidget {
  const HomeControl({Key? key}) : super(key: key);

  @override
  _HomeControlState createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  int page = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  final List<Widget> children = <Widget>[
    CurrentDonation(),
    HistoryAndUpcoming(),
    Profile()
  ];
  void onTabTapped(int index) {
    setState(() {

      page = index;

    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(color: Colors.red,),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Donate Life"),

      ),
      bottomNavigationBar: CurvedNavigationBar(
          key: bottomNavigationKey,
          backgroundColor: Colors.red,
          buttonBackgroundColor: Colors.red,
          color: Colors.red,
          items: const <Widget>[
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.event, size: 30, color: Colors.white),
            Icon(Icons.person, size: 30, color: Colors.white),
          ],
          onTap: onTabTapped
      ),
        body:
        Center(
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.3, 1],
                        colors: [Colors.red, Colors.white])
                ),
                child: children[page]

            )


        )
    );
  }
}
