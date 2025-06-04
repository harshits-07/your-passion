import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:your_passion/core/colors.dart';
import 'package:your_passion/core/screen_utils.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  static const String path = '/authentication-screen';

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenHeight * 0.46,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "DREAMDESK",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: ScreenUtils.x(8),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'ManropeBold',
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              CupertinoIcons.briefcase_fill,
                              color: AppColors.primaryColor,
                              size: ScreenUtils.x(8),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.06),
                        Text(
                          "Join a trusted and professional community",
                          style: TextStyle(fontSize: ScreenUtils.x(5)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                Flexible(
                  child: SizedBox(
                    height: screenHeight * 0.35,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.05,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/g_logo.png",
                                        height: 22,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Continue with Google",
                                        style: TextStyle(
                                          fontSize: ScreenUtils.x(5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            SizedBox(
                              height: screenHeight * 0.05,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    width: 1.2,
                                    color: AppColors.primaryColor,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(CupertinoIcons.mail_solid),
                                      SizedBox(width: 10),
                                      Text(
                                        "Sign in with Email",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Text(
                          "OR",
                          style: TextStyle(fontSize: ScreenUtils.x(4)),
                        ),

                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ScreenUtils.x(5),
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(text: "New to DreamDesk? "),
                              TextSpan(
                                text: "Join now",
                                style: TextStyle(color: AppColors.primaryColor),
                                recognizer:
                                    TapGestureRecognizer()..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: ScreenUtils.x(4),
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "By clicking Agree & Join or Continue, you agree to the DreamDesk ",
                              ),
                              TextSpan(
                                text: "Terms & Conditions.",
                                style: TextStyle(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer:
                                    TapGestureRecognizer()..onTap = () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
