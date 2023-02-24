import 'package:buss_project/constands/constands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/textformfield.dart';

class adddriver extends StatelessWidget {
  const adddriver({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorblack,
          title: Text('Add Driver'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            textformfield(text: 'Enter Name'),
            textformfield(text: 'Enter Lisence Number'),
            SizedBox(
              height: 450,
            ),
            SizedBox(
              height: 58,
              width: 316,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(colorred),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => adddriver()));
                  },
                  child: Text(
                    'Save',
                    style: GoogleFonts.lato(fontSize: 20, color: colorwhite),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
