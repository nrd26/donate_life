import 'package:donate_life/Components/current_donation.dart';
import 'package:flutter/material.dart';

class RewardsList extends StatefulWidget {
  const RewardsList({Key? key}) : super(key: key);

  @override
  _RewardsListState createState() => _RewardsListState();
}

class _RewardsListState extends State<RewardsList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        CurrentDonation()
      ],
    );
  }
}
