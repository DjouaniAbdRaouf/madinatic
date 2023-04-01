// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madinatic/themes.dart';
import 'package:madinatic/views/screens/home/manageIt.dart';
import 'package:madinatic/views/screens/home/signaleRisque.dart';
import 'package:madinatic/views/widgets/TextUtils.dart';
import 'package:madinatic/views/widgets/appbarWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryWithOpacity75,
      drawer: Drawer(),
      appBar: appBarwidgetHomeScreen(title: "Acceuil"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(PaddingManager.kheight),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Madina-Tic',
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                'Detectitou....SEGMOU !',
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: PaddingManager.kheight,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {},
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Stack(
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //       color: Colors.transparent,
                      //       borderRadius: BorderRadius.circular(25),
                      //       image: DecorationImage(
                      //           image: NetworkImage(
                      //               "https://www.bmi.bund.de/SharedDocs/bilder/DE/schmuckbilder/bau/stadt-wohnen/smart-city.jpg?__blob=poster&v=2"),
                      //           fit: BoxFit.cover,
                      //           filterQuality: FilterQuality.high)),
                      // ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            color: ColorManager.primaryColor.withOpacity(0.40),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Positioned(
                          bottom: 15,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textUtils(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontsize: 14.0,
                                    text: "Les problèmes urbains"),
                                SizedBox(
                                  height: 8,
                                ),
                                textUtils(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontsize: 8.0,
                                    text:
                                        "C'est l'apanage des habitats spontanés, précaires et insalubres appelés bidonvilles "),
                              ],
                            ),
                          ))
                    ],
                  );
                },
                itemCount: 3,
              ),
              SizedBox(
                height: PaddingManager.kheight,
              ),
              SizedBox(
                width: double.infinity,
                height: 500,
                child: GridView.builder(
                    itemCount: CardHome.listCard.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return CardHome.listCard[index];
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }


}

class CardHome extends StatelessWidget {
  const CardHome({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  static var listCard = [
    InkWell(onTap: () {
     Get.to(()=> ManageItScreen()) ;
    } ,child: CardHome(icon: Icons.home_outlined, text: "manage it")),
    CardHome(icon: Icons.newspaper, text: "Actualités"),
    InkWell( onTap: () {
     Get.to(()=> SignaleRisqueScreen()) ;
    } ,child: CardHome(icon: Icons.error, text: "Risque")),
    CardHome(icon: Icons.calendar_today, text: "Agenda"),
    CardHome(icon: Icons.menu_book, text: "Menus"),
    CardHome(icon: Icons.notifications, text: "Alertes"),
    CardHome(icon: Icons.access_alarm, text: "Urgences"),
    CardHome(icon: Icons.contact_page, text: "Suivez-nous"),
    CardHome(icon: Icons.settings, text: "Paramètres"),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 150,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorManager.primaryColor.withOpacity(0.7)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon ,
              color: Colors.grey.shade400,
              size: 40,
            ),
            SizedBox(
              height: 5,
            ),
            textUtils(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w500,
                fontsize: 16.0,
                text: text)
          ],
        ),
      ),
    );
  }
}
