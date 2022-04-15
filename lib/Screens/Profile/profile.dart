// ignore_for_file: prefer_const_constructors

import 'package:donate_life/Components/profile_items.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return ListView(
        physics: BouncingScrollPhysics(),
        itemExtent: _height / 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ProfileItem(
            text: 'User Settings',
            icon: Icons.settings,
            onTap: null,
          ),
          ProfileItem(
            text: 'Redeem points',
            icon: Icons.redeem,
            onTap: null,
          ),

          ProfileItem(
              text: 'Manage Address',
              icon: Icons.apartment_outlined,
              onTap:  (){}
          ),
          ProfileItem(
            text: 'Notifications',
            icon: Icons.notifications,
            onTap: null,
          ),

          ProfileItem(
            text: 'Log Out',
            icon: Icons.logout_rounded,
            onTap: () {},
          ),
        ],
    );
  }
}
