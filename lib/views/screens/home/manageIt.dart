import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madinatic/themes.dart';
import 'package:madinatic/views/widgets/appbarWidget.dart';

class ManageItScreen extends StatelessWidget {
  const ManageItScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwidgetHomeScreen(title: "Manage It"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingManager.kheight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                   Text(
                'SIGNALER VOTRE PROBLEME',
                style: GoogleFonts.lobster(
                    color: ColorManager.primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: PaddingManager.kheight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
