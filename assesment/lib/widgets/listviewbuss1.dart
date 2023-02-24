import 'package:buss_project/pagess/manage_bus1.dart';
//import 'package:buss_project/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constands/constands.dart';

class listviewbuss1 extends StatelessWidget {
  const listviewbuss1(
      {super.key,
      required this.title,
      required this.buttontext,
      required this.subtitle,
      required this.image});
  final String title;
  final String buttontext;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              shadowColor: Colors.grey,
              borderOnForeground: true,
              child: ListTile(
                subtitle: Text(subtitle),
                trailing: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(colorred),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => managebus()));
                    },
                    child: Text(
                      buttontext,
                      style: GoogleFonts.lato(color: colorwhite),
                    )),
                style: ListTileStyle.list,
                title: Text(
                  title,
                  style: TextStyle(color: colorblack),
                ),
                leading: Image.asset(image),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
                //   thickness: 2,
                //   height: 20,
                );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
