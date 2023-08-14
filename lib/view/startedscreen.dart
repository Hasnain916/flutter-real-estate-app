import 'package:flutter/material.dart';
import 'package:home_rent/utils/appButton.dart';
import 'package:home_rent/utils/color.dart';
import 'dart:io' show Platform;

import 'package:home_rent/utils/gap.dart';
import 'package:home_rent/utils/login_option.dart';
import 'package:home_rent/view/auth/login.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: 15, vertical: Platform.isIOS ? 0 : 15),
          child: Column(
            children: [
              Row(
                children: const [
                  LoginOption(path: "assets/login1.png"),
                  Gap(isWidth: true, isHeight: false, width: 10),
                  LoginOption(path: "assets/login2.png"),
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.01),
              Row(
                children: const [
                  LoginOption(path: "assets/login3.png"),
                  Gap(isWidth: true, isHeight: false, width: 10),
                  LoginOption(path: "assets/login4.png"),
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.155),
              Row(
                children:const [
                   Text(
                    "Welcome To ",style: TextStyle(
                      fontSize: 30
                  ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                   Text(
                      "Home Rent Services",
                      style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                      )
                  ),
                ],
              ),
              Gap(isWidth: false, isHeight: true, height: height * 0.035),
              AppButton(
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginWithPhoneNumber()));
                },
                title: "Get Started",
                textColor: AppColors.whiteColor,
                isButtonIcon: false,
                height: height * 0.08,
                radius: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
