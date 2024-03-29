import 'package:coupon_uikit/coupon_uikit.dart';
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
  Color primaryColor = Color(0xFEEEEE);
  Color secondaryColor = Colors.red;

  int points = 5000;
  var coupons = [1,2,3,4,5,6,7,8,9,0];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Card(
              elevation: 8,
              shadowColor: Colors.black,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  side: const BorderSide(color: Colors.black12)
              ),
              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      // TextSpan(
                      //   text: "Click ",
                      // ),
                      const WidgetSpan(
                        child: Icon(Icons.monetization_on_outlined, size: 17,color: Colors.yellow,),
                      ),
                      TextSpan(
                        text: ' '+points.toString(),
                        style: const TextStyle(
                          fontSize: 16
                        )
                      ),
                    ],
                  ),
                ),
              )),
        ),
        Carousel(),
        ClipRRect(
          child: Container(
            padding: EdgeInsets.only(top:20, bottom: 10),
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                // boxShadow: [
                // BoxShadow(
                // color: Colors.grey,
                // offset: Offset(0.0, 1.0), //(x,y)
                // blurRadius: 6.0,
                // ),
                // ],
    ),
            child: Center(
              child: Text(
                  "Redeemable Coupons:",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: coupons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CouponCard(
                  curveAxis: Axis.vertical,
                  backgroundColor: primaryColor,
                  firstChild: Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  '25%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'OFF',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(color: Colors.white54, height: 0),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'ORDER ON\nZOMATO',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  secondChild:  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFEEEEE),
                    ),                    width: double.maxFinite,
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Coupon Code',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'DONATE4LIFE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Apply the code on checkout. Points will be deducted when availed',
                          // textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Valid Till - 30 Jul 2022',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
