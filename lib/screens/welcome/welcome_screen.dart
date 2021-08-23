import 'package:dating_app/components/custom_button.dart';
import 'package:dating_app/constants.dart';
import 'package:dating_app/responsive.dart';
import 'package:dating_app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding * 2),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/welcome.png',
                    width: getScreenPropotionHeight(365, size),
                  )
                ),
          
                Text(
                  "Let's get closer",
                  style: TextStyle(
                    color: kLightTextColor,
                    fontSize: 18.0
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "The best place to\nmeet your future\npartner.",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 20),

                CustomButton(
                  tap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  text: 'Get Started',
                ),

                SizedBox(height: 20),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
