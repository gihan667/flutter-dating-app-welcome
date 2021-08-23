import 'package:dating_app/components/custom_button.dart';
import 'package:dating_app/components/social_button.dart';
import 'package:dating_app/constants.dart';
import 'package:dating_app/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: getScreenPropotionHeight(orientation == Orientation.portrait ? 390 : 450, size),
                child: Stack(
                  children: [
                    Positioned(
                      left: getScreenPropotionWidth(64, size),
                      top: getScreenPropotionHeight(90, size),
                      child: Image.asset(
                        'assets/images/heart.png',
                        width: getScreenPropotionHeight(67, size),
                      )
                    ),
                    
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/images/couple.svg',
                        height: getScreenPropotionHeight(390, size),
                      )
                    ),
            
                    Positioned(
                      left: getScreenPropotionWidth(28, size),
                      top: getScreenPropotionHeight(190, size),
                      child: Text(
                        'Login to\na lovely\nlife.',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: kTextColor
                        ),
                      )
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: kDefaultPadding),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your mobile number',
                      style: TextStyle(
                        fontSize: 16,
                        color: kINputLabelColor,
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: kDefaultPadding / 3),

                    TextField(
                      style: TextStyle(
                        color: kInputTextColor,
                        fontWeight: FontWeight.w600
                      ),
                      decoration: InputDecoration(
                        fillColor: kInputColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                        
                        prefix: Padding(
                          padding: EdgeInsets.only(right: kDefaultPadding / 4),
                          child: Text(
                            '+94',
                            style: TextStyle(
                              color: kInputTextColor,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        )
                      ),
                    ),

                    SizedBox(height: kDefaultPadding / 2),

                    CustomButton(
                      tap: () {},
                      text: 'Continue'
                    ),

                    SizedBox(height: kDefaultPadding / 2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: kAltDarkTextColor,
                          width: size.width / 8,
                          height: 1,
                        ),

                        SizedBox(width: kDefaultPadding / 3),

                        Text(
                          'or',
                          style: TextStyle(
                            color: kAltDarkTextColor,
                            fontWeight: FontWeight.w600
                          )
                        ),

                        SizedBox(width: kDefaultPadding / 3),

                        Container(
                          color: kAltDarkTextColor,
                          width: size.width / 8,
                          height: 1,
                        ),
                      ],
                    ),

                    SizedBox(height: kDefaultPadding / 2),

                    Row(
                      children: [
                        Expanded(
                          child: SocialButton(
                            tap: () {},
                            icon: 'assets/icons/google.svg',
                            color: kGoogleColor,
                          ),
                        ),

                        SizedBox(width: kDefaultPadding / 2),

                        Expanded(
                          child: SocialButton(
                            tap: () {},
                            icon: 'assets/icons/fb.svg',
                            color: kFbColor,
                          ),
                        ),
                      ]
                    ),

                    SizedBox(height: kDefaultPadding / 2),

                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            color: kAltTextColor
                          ),
                          children: [
                            TextSpan(
                              text: "By continue to login, you accept our company’s "
                            ),
                            TextSpan(
                              text: 'Term & conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kAltDarkTextColor,
                                decoration: TextDecoration.underline
                              ),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy policies.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kAltDarkTextColor,
                                decoration: TextDecoration.underline
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: kDefaultPadding / 2),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
