import 'package:buss_project/constands/constands.dart';
import 'package:buss_project/widgets/textformfield.dart';
import 'package:buss_project/pagess/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});
  var nameControler = TextEditingController();
  var emailControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 266, width: double.infinity, color: colorblack),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Image.asset('lib/images/Polygon 1.png',
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 127,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(fontSize: 41, color: colorwhite),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 5),
                            child: Text(
                              'Manage Your Bus And Driver',
                              style: TextStyle(color: colorwhite, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Column(
                children: [
                  textformfield(
                    text: 'Enter Username',
                    controller: nameControler,
                  ),
                  textformfield(
                    text: 'Enter Password',
                    controller: nameControler,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 223),
              child: SizedBox(
                height: 58,
                width: 316,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(colorred),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.lato(fontSize: 20, color: colorwhite),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
