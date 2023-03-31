// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorManager {
  static Color primaryColor = const Color(0xFF2B3467);
  static Color primaryWithOpacity75 = const Color(0xBF2B3467);
  static Color textColor = Colors.white;
  static Color greyLight = Colors.grey.shade300;
}

class ImageManager {
  static String smartCity = "assets/images/Smart-City-2-scaled-jpg.jpg";
  static String detectManage = "assets/images/detectandmanage.jpg";
  static String designit = "assets/images/designit.jpeg";
  static String cam = "assets/images/cam.png";
  static String gallery = "assets/images/gallery.png";


}

class PaddingManager {
  static double kheight = 20;
  static double kheight2 = 40;
  static double kheight3 = 60;
}

class TextStyleMnager {
  static TextStyle lobster = GoogleFonts.lobster(
      color: ColorManager.textColor, fontSize: 60, fontWeight: FontWeight.bold);

  static TextStyle lora2 = GoogleFonts.lora(
      color: ColorManager.textColor, fontSize: 40, fontWeight: FontWeight.w800);

  static TextStyle petitTextPrimary = TextStyle(
      color: ColorManager.primaryColor,
      fontSize: 14,
      fontWeight: FontWeight.w600);
  static TextStyle petitTextPrimary2 = TextStyle(
      color: ColorManager.primaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w600);
  static TextStyle petitTextWithe = const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
  static TextStyle petitTextGreyBlack = TextStyle(
      color: Colors.grey.shade900, fontSize: 16, fontWeight: FontWeight.w600);
  static TextStyle petitTextGrey = TextStyle(
      color: Colors.grey.shade600, fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle getstyle(
      {required FontWeight fontWeight,
      required double fontsize,
      required Color color}) {
    return TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight,
        overflow: TextOverflow.ellipsis);
  }
}

class LottieManager {
  static String smartlottie = "assets/lotties/smartcityLottie.json";
  static String signuplottie = "assets/lotties/signup.json";
  static String phoneLottie = "assets/lotties/phoneLottie.json";
}

class IconsManager {}
