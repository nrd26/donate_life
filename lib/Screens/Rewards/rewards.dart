import 'package:donate_life/Components/carousel.dart';
import 'package:donate_life/Components/current_donation.dart';
import 'package:donate_life/Components/custom_card.dart';
import 'package:donate_life/Components/rewardslist.dart';
import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Points accumulated: 5000"),
          ],
        ),
        Carousel(),
        Text("Offers available:"),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
        ListTile(
          title: Text("Demo"),
          subtitle: Text("Demo"),
        ),
        Divider(),
      ],
    );
  }
}
