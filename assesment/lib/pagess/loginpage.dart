//import 'package:buss_project/api/ApiClient.dart';
import 'package:buss_project/api/models/LoginModel.dart';
import 'package:buss_project/api/models/apilClient.dart';
//import 'package:buss_project/models/LoginModel.dart';
import 'package:buss_project/constands/constands.dart';
import 'package:buss_project/widgets/textformfield.dart';
import 'package:buss_project/pagess/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/sharedPreference.dart';
//import '../utils/sharedPrefence.dart';

class loginpage extends StatelessWidget {
  loginpage({super.key});
  var nameControler = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  ApiClient _apiClient = ApiClient();
  Future<void> loginUsers(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Processing Data'),
        backgroundColor: Colors.green.shade300,
      ));

      LoginModel res = await _apiClient.login(
        nameControler.text.trim(),
        passwordController.text.trim(),
      );

      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if (res.status) {
        await savename('token', res.access);
        await savename('urlId', res.urlId);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => homepage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error: ${res.message}'),
          backgroundColor: Colors.red.shade300,
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: 266,
                          width: double.infinity,
                          color: colorblack),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Image.asset('lib/images/Polygon 1.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 10,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      fontSize: 41, color: colorwhite),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 40, top: 5),
                                  child: Text(
                                    'Manage Your Bus And Driver',
                                    style: TextStyle(
                                        color: colorwhite, fontSize: 16),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textformfield(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter username";
                            }
                          },
                          text: 'Enter Username',
                          controller: nameControler,
                        ),
                        textformfield(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter passwordx";
                            }
                          },
                          text: 'Enter Password',
                          controller: passwordController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          height: 58,
          width: 316,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(colorred),
              ),
              onPressed: () => loginUsers(context),
              child: Text(
                'Login',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: colorwhite),
              )),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
