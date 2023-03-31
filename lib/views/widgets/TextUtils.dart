// ignore_for_file: camel_case_types, file_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class textUtils extends StatelessWidget {
  final text, fontsize, fontWeight, color;
  const textUtils(
      {Key? key,
      required this.color,
      required this.fontWeight,
      required this.fontsize,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, fontWeight: fontWeight, color: color),
    );
  }
}