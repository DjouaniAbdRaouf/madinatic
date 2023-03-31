// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madinatic/views/screens/auth/SignUpScreen.dart';
import 'package:madinatic/views/screens/auth/loginScreen.dart';
import 'package:madinatic/views/widgets/Onboarding_build.dart';
import 'package:madinatic/views/widgets/appbarWidget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:madinatic/themes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var controller = PageController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(text: ''),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  controller.jumpToPage(2);
                },
                child: Text(
                  "Ignorer",
                  style: TextStyleMnager.petitTextPrimary,
                )),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: WormEffect(spacing: 16),
              ),
            ),
            islast
                ? TextButton(
                    onPressed: () {
                      Get.to(()=> SignUpScreen());  
                    },
                    child: Text(
                      "Commencer",
                      style: TextStyleMnager.petitTextPrimary,
                    ),
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.primaryColor),
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 1000),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text(
                      "Suivant",
                      style: TextStyleMnager.petitTextWithe,
                    )),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 60.0),
        child: PageView(
          onPageChanged: (value) {
            setState(() {
              islast = value == 2;
            });
          },
          controller: controller,
          children: [
            OnboardingBuild(
                color: Colors.white,
                path: ImageManager.smartCity,
                title: "Smart and Safe City ?",
                subtitle:
                    "Une ville intelligente est un syntagme désignant la capacité d'une ville à utiliser les technologies de l'information et de la communication pour améliorer la qualité des services urbains ou réduire leurs coûts."),
            OnboardingBuild(
                color: Colors.white,
                path: ImageManager.detectManage,
                title: "Detect it and repare it … DETECTITOU? SEGMOU",
                subtitle:
                    "Pour rôle de détecter les anomalies, les problèmes, les menaces, les risques de site urbain concernant la gestion de tous les types de mobilier urbain, la dégradation des VRD, les trottoirs..."),
            OnboardingBuild(
                color: Colors.white,
                path: ImageManager.designit,
                title: "I Manage and Design it",
                subtitle:
                    "une implication citoyenne, des solutions urbaines, des aménagements adéquats et judicieux, information des acteurs locaux responsables de la gestion et du bienêtre des habitants"),
          ],
        ),
      ),
    );
  }
}
