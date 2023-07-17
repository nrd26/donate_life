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
        backgroundColor: Colors.white,
        // elevation: 0.0,
        foregroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/map_sample_image.png',fit: BoxFit.fill,),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text("Navigating you to:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red
                ),
                ),
                Text(hospitalName,
                  style: const TextStyle(
                      fontSize: 20,
                    color: Colors.red
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
