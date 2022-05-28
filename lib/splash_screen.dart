import 'dart:async';
import 'package:donate_life/homecontrol.dart';
import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}



class VideoState extends State<Splash> with SingleTickerProviderStateMixin{

  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomeControl())
    );
  }

  @override
  void initState() {
    super.initState();



    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation =
    new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // new Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.min,
          //   children: <Widget>[
          //
          //     Padding(padding: EdgeInsets.only(bottom: 30.0),child:new Image.asset('assets/devs.jpg',height: 75.0,fit: BoxFit.scaleDown,))
          //
          //   ],),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/splash.png',
                width: animation.value * 600,
                height: animation.value * 600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
