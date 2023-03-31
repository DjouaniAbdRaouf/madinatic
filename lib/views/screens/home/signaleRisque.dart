// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, avoid_unnecessary_containers

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madinatic/models/ProblemeCategories.dart';
import 'package:madinatic/views/widgets/TextFormGest.dart';
import 'package:madinatic/views/widgets/appbarWidget.dart';
import 'package:madinatic/themes.dart';

class SignaleRisqueScreen extends StatefulWidget {
  const SignaleRisqueScreen({super.key});

  @override
  State<SignaleRisqueScreen> createState() => _SignaleRisqueScreenState();
}

class _SignaleRisqueScreenState extends State<SignaleRisqueScreen> {
  int tag = 0;

  String cat = "Santé";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarwidgetHomeScreen(title: "Anomalie"),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: PaddingManager.kheight,
            vertical: PaddingManager.kheight2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'SIGNALER VOTRE PROBLEME',
              style: GoogleFonts.lobster(
                color: ColorManager.primaryColor,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: PaddingManager.kheight,
            ),
            ChipsChoice<int>.single(
              value: tag,
              onChanged: (val) {
                setState(() {
                  tag = val;
                  cat = ProblemeCategories.problemes[val];
                });
              },
              choiceItems: C2Choice.listFrom<int, String>(
                source: ProblemeCategories.problemes,
                value: (i, v) => i,
                label: (i, v) {
                  return v;
                },
              ),
              choiceStyle: const C2ChipStyle(
                  backgroundColor: Colors.blueGrey,
                  checkmarkColor: Colors.blue),
              choiceCheckmark: true,
              wrapped: true,
            ),
            SizedBox(
              height: PaddingManager.kheight,
            ),
            TextFormGest(
              controller: TextEditingController(),
              errormessage: "champ obligatoire",
              hinttext: "Description du probleme",
              icon: Icons.text_fields,
              coloprefix: ColorManager.primaryColor,
            ),
            SizedBox(
              height: PaddingManager.kheight,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        ImageManager.cam,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Camera",
                        style: TextStyle(
                            color: ColorManager.primaryColor, fontSize: 18 , fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Image.asset(
                        ImageManager.gallery,
                        height: 80,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Gallerie",
                        style: TextStyle(
                            color: ColorManager.primaryColor, fontSize: 18, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
