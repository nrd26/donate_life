import 'package:donate_life/Components/current_donation.dart';
import 'package:flutter/material.dart';

class HistoryAndUpcoming extends StatefulWidget {
  @override
  _HistoryAndUpcomingState createState() => _HistoryAndUpcomingState();
}

class _HistoryAndUpcomingState extends State<HistoryAndUpcoming> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            unselectedLabelColor: Colors.black38,
            labelColor: Colors.red,
            indicator:UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.red, width: 2),
              insets: EdgeInsets.symmetric(horizontal: 40),
            ),
            tabs: [
              Tab(
                text: 'Active Events',
                // icon: Icon(Icons.wb_sunny_outlined),
              ),
              Tab(
                text: 'Donation History',
                // icon: Icon(Icons.thermostat_outlined),
              ),
            ],
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
                children: [
                  CurrentDonation(),
                  CurrentDonation()
                ]
            ),
          ),
        ],
      ),
    );
  }
}






