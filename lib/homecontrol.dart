import 'package:donate_life/Components/bottomnavbar.dart';
// import 'package:donate_life/Components/curved_nav_bar/curved_navigation_bar.dart';
import 'package:donate_life/Components/current_donation.dart';
import 'package:donate_life/Screens/Home/homepage.dart';
import 'package:donate_life/Screens/Profile/profile.dart';
import 'package:donate_life/Screens/Rewards/rewards.dart';
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
    // CurrentDonation(),
    HistoryAndUpcoming(),
    Rewards(),
    // HistoryAndUpcoming(),
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
      // drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                const Text("Donate Life",
                  style: TextStyle(
                      color: Colors.red
                  ),
                ),
              ],
            ),
        ),
        backgroundColor: Colors.white,

      ),
      bottomNavigationBar: BottomNavBar(
          selectedIndex: page,
          onTabChanged:onTabTapped
      ),
        body:
        Center(
            child: Container(
              color: Colors.white,
                child: children[page]

            )


        )
    );
  }
}
