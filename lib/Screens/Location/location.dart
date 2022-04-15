import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String hospitalName = "KMC Hospital, Manipal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/map_sample_image.png'),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text("Navigating you to:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),
                ),
                Text(hospitalName,
                  style: const TextStyle(
                      fontSize: 20,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
