import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constands/constands.dart';

class managebus extends StatelessWidget {
  const managebus({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Driver',
          ),
          backgroundColor: colorblack,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Riyas',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Lisonce no 344739486184',
                          style: TextStyle(color: colorwhite),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                              'lib/images/99-996004_get-driving-directions-car-driver-removebg-preview 1.png'),
                          fit: BoxFit.contain),
                      color: colorblack,
                      borderRadius: BorderRadius.circular(10)),
                  width: 335,
                  height: 166,
                ),
              ],
            ),
            Image.asset('lib/images/WhatsApp Image 2023-02-23 at 21.44.47.jpg')
          ],
        ),
      ),
    );
  }
}
