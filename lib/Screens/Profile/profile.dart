// ignore_for_file: prefer_const_constructors

import 'package:donate_life/Components/profile_items.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return ListView(
        physics: BouncingScrollPhysics(),
        // itemExtent: _height / 10,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(height: 40,),
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/user.png',height: 150,)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20),
            child: Center(
              child: Text('Nihal Dias',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
    // SizedBox(height: 10,),
          ProfileItem(
            text: 'User Settings',
            icon: Icons.settings,
            onTap: null,
          ),
          ProfileItem(
            text: 'About',
            icon: Icons.info_outlined,
            onTap: null,
          ),

          // ProfileItem(
          //     text: 'Manage Address',
          //     icon: Icons.apartment_outlined,
          //     onTap:  (){}
          // ),
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
