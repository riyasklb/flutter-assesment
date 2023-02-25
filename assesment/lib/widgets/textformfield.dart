import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  textformfield(
      {this.validator, required this.text, super.key, this.controller});
  final String? Function(String?)? validator;
  final String text;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          fillColor: Colors.grey[250],
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey[800],
          ),
          border: InputBorder.none,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(0, 158, 158, 158), width: 2.0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        ),
      ),
    );
  }
}
