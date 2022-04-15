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
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: 'Upcoming events',
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
                  Container(),
                  Container()
                ]
            ),
          ),
        ],
      ),
    );
  }
}






