import 'package:buss_project/constands/constands.dart';
import 'package:buss_project/pagess/managedriver.dart';
import 'package:buss_project/widgets/listviewbuss1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'manage_bus1.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: colorblack,
          title: appLogo),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => managebus()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bus',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: 46,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Manage Your Bus',
                              style: TextStyle(color: colorwhite),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('lib/images/image 2 (1).png'),
                        ),
                        color: colorred,
                        borderRadius: BorderRadius.circular(10)),
                    width: 158,
                    height: 176,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => managedriver()));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Driver',
                              style: TextStyle(
                                  color: colorwhite,
                                  fontSize: 46,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Manage Your Driver',
                              style: TextStyle(color: colorwhite),
                            ),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.bottomRight,
                            image: AssetImage(
                                'lib/images/99-996004_get-driving-directions-car-driver-removebg-preview 1.png'),
                            fit: BoxFit.scaleDown),
                        color: colorblack,
                        borderRadius: BorderRadius.circular(10)),
                    width: 158,
                    height: 176,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  '  21  buses found',
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ),
            Expanded(
                child: listviewbuss1(
              subtitle: 'buss dummi',
              title: 'Ksrtc',
              image: 'lib/images/image 3 (1).png',
              buttontext: 'Manage',
            ))
          ],
        ),
      ),
    );
  }
}

Image appLogo = new Image(
    image: new ExactAssetImage(
      'lib/images/moovbe (1).png',
    ),
    height: 90.0,
    width: 90.0,
    alignment: FractionalOffset.center);
