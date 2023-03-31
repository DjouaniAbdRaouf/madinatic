// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:madinatic/themes.dart';
import 'package:madinatic/views/screens/auth/loginScreen.dart';
import 'package:madinatic/views/screens/otp/phoneNumberScreen.dart';
import 'package:madinatic/views/widgets/TextUtils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 40,
        child: textUtils(
            color: ColorManager.primaryColor,
            fontWeight: FontWeight.bold,
            fontsize: 18.0,
            text: 'MADINATIC'),
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
                    child: LottieBuilder.asset(LottieManager.signuplottie),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: phone,
                    validator: (val) {
                      if (val == "") {
                        return "     empty email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorManager.primaryColor,
                          size: 26,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        labelText: "email address"),
                  ),
                  SizedBox(
                    height: 25,
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
                        // if (globalekey.currentState!.validate()) {}
                        Get.to(()=> PhoneNumberScreen());
                      },
                      child: textUtils(
                        fontsize: 15.0,
                        fontWeight: FontWeight.w600,
                        text: "Continue",
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
                          text: "Vous ètes déja membre ?  "),
                      InkWell(
                        onTap: () {
                          Get.to(()=> LoginScreen());
                        },
                        child: textUtils(
                            color: ColorManager.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontsize: 14.0,
                            text: "Conectez-vous"),
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
