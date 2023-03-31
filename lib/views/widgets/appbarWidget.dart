// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:madinatic/themes.dart';

AppBar appbarWidget({required String text}) {
  return AppBar(
    systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
    foregroundColor: Colors.grey.shade900,
    backgroundColor: Colors.grey.shade100,
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      text,
      style: TextStyleMnager.getstyle(
          fontWeight: FontWeight.w500,
          fontsize: 22,
          color: Colors.grey.shade800),
    ),
  );
}


  AppBar appBarwidgetHomeScreen({required String title}) {
    return AppBar(
      title:  Text(title),
      centerTitle: true,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light),
      foregroundColor: Colors.white,
      backgroundColor: ColorManager.primaryWithOpacity75,
      elevation: 0.0,
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            child: Icon(
              Icons.manage_accounts,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }

