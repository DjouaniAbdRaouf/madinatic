// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:madinatic/themes.dart';
import 'package:madinatic/views/screens/auth/SignUpScreen.dart';
import 'package:madinatic/views/widgets/TextUtils.dart';
import 'package:madinatic/views/widgets/appbarWidget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> globalekey = GlobalKey<FormState>();
  bool obscure = true;
  TextEditingController userN = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool islaoding = false;
  var conterTest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(text: ""),
      bottomSheet: Container(
        alignment: Alignment.center,
        height:  40,
        child: textUtils(color: ColorManager.primaryColor, fontWeight: FontWeight.bold, fontsize: 18.0, text: 'MADINATIC') ,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: globalekey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: PaddingManager.kheight2,
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: LottieBuilder.asset(LottieManager.smartlottie),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: phone,
                    validator: (val) {
                      if (val == "") {
                        return "     empty phone";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: ColorManager.primaryColor,
                          size: 26,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Phone number"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: pass,
                    validator: (val) {
                      if (val == "") {
                        return "     empty password";
                      }
                    },
                    obscureText: obscure,
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                obscure = !obscure;
                              });
                            },
                            child: Icon(obscure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        prefixIcon: Icon(
                          Icons.password,
                          color: ColorManager.primaryColor,
                          size: 26,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "Password"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: textUtils(
                          fontWeight: FontWeight.w600,
                          fontsize: 15.0,
                          text: "Forgot Password?",
                          color: Colors.grey.shade500,
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.primaryColor,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () async {
                        if (globalekey.currentState!.validate()) {}
                      },
                      child: textUtils(
                        fontsize: 15.0,
                        fontWeight: FontWeight.w600,
                        text: "Connecter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  islaoding ? LinearProgressIndicator() : Text(""),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textUtils(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w600,
                          fontsize: 14.0,
                          text: "Vous n'avais pas un Compte ?  "),
                      InkWell(
                        onTap: () {
                          Get.to(()=> SignUpScreen());
                        },
                        child: textUtils(
                            color: ColorManager.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontsize: 14.0,
                            text: "Inscrivez vous"),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
