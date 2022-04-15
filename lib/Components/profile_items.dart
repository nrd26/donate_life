import 'package:flutter/material.dart';

class ProfileItem extends StatefulWidget {
  const ProfileItem(
      {required this.onTap, required this.text, required this.icon});

  final dynamic onTap;
  final String text;
  final IconData icon;
  @override
  _ProfileItemState createState() => _ProfileItemState();
}

class _ProfileItemState extends State<ProfileItem> {
  get kTextSizeSMedium => null;

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: widget.onTap,
        child: ListTile(
          leading: Container(
              height: _height / 14,
              width: _height / 14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black12
                  ),
                  color: Colors.white),
              child: Icon(
                widget.icon,
                color: Colors.red,
              )),
          title: Text(
            widget.text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
          ),
        ),
      ),
    );
  }
}
