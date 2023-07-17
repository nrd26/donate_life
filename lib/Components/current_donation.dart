import 'package:donate_life/Screens/Disclaimer/disclaimer.dart';
import 'package:flutter/material.dart';

class CurrentDonation extends StatefulWidget {
  const CurrentDonation({Key? key}) : super(key: key);

  @override
  _CurrentDonationState createState() => _CurrentDonationState();
}

class _CurrentDonationState extends State<CurrentDonation> {
  var type = "O+";
  var units = 3;
  var hospital = "KMC Manipal";
  var deadline = "11:30 PM, 23/12/21";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: ListView(
        children: [
          Card(
            elevation: 4,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
                side: const BorderSide(color: Colors.black12)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.warning_amber_sharp,color: Colors.red,),
                ),
                title: Text('Blood Type: '+type),
                trailing: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Disclaimer())
                    );
                  },
                  child: const Text("Donate"),
                ),
                // Icon(Icons.warning_amber_sharp,color: Colors.red,),
                subtitle: Text(
                  'No of units: '+units.toString()+'\nHospital: '+hospital.toString()+'\nEnds: '+deadline.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
