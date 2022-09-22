import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:silma_connect/views/authentification-pages/loginscreen.dart';
import 'package:silma_connect/views/authentification-pages/signupscreen.dart';
import 'package:silma_connect/views/authentification-pages/widgets/rounded-button.dart';
import 'package:silma_connect/constant.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ShaderMask(
        shaderCallback: (rect) => LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.center,
          colors: [Colors.black, Colors.transparent],
        ).createShader(rect),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_img.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            ),
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Flexible(
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
                width: 125,
                height: 125,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds:500),
                      reverseDuration: Duration(milliseconds: 500),
                      child: LoginScreen(),
                      childCurrent: this));
            },
            child:
                RoundedButton(color: Colors.blue, buttonName: "Connectez-vous"),
          ),
          SizedBox(
            height: 25,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.leftToRight,
                           duration: Duration(milliseconds:500),
                      reverseDuration: Duration(milliseconds: 500),
                        child: SignupScreen(),
                        childCurrent: this));
              },
              child: RoundedButton(
                  color: Colors.white, buttonName: "S'enregister")),
          SizedBox(
            height: 25,
          ),
          Text(
            "Essayer",
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height(context) * 0.02,
          )
        ]),
      )
    ]);
  }
}
