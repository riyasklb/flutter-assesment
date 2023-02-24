import 'package:buss_project/constands/constands.dart';
import 'package:buss_project/pagess/add_driver.dart';
import 'package:buss_project/widgets/listviewbuss1.dart';
//import 'package:buss_project/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

class managedriver extends StatelessWidget {
  const managedriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  '  21  buses found',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Colors.white,
                      shadowColor: Colors.grey,
                      borderOnForeground: true,
                      child: ListTile(
                        subtitle: Text('Lisence Number: 25363733$index'),
                        trailing: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(colorred),
                            ),
                            onPressed: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) => managebus()));
                            },
                            child: Text(
                              'Delete',
                              style: GoogleFonts.lato(color: colorwhite),
                            )),
                        style: ListTileStyle.list,
                        title: Text(
                          'Driver  $index',
                          style: TextStyle(color: colorblack),
                        ),
                        leading: Image.asset('lib/images/Ellipse.png'),
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
            ),
            SizedBox(
              height: 58,
              width: 316,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(colorred),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => adddriver()));
                  },
                  child: Text(
                    'Add Driver',
                    style: GoogleFonts.lato(fontSize: 20, color: colorwhite),
                  )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Manage Driver',
        ),
        backgroundColor: colorblack,
      ),
    );
  }
}
