import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:silma_connect/constant.dart';
import 'package:silma_connect/views/authentification-pages/checkingcodescreen.dart';
import 'package:silma_connect/views/authentification-pages/widgets/googleConnect.dart';
import 'package:silma_connect/views/authentification-pages/widgets/rounded-button.dart';
import 'package:silma_connect/views/authentification-pages/widgets/text-field-input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool politicsIsOk = false;
  bool emailIsValid = false;
  bool startMailEdit = false;
  TextEditingController _emailController = TextEditingController();

  void initState() {
    super.initState();
    _emailController.addListener(_checkEmail);
  }

  _checkEmail() {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_emailController.text);

    if (emailValid)
      setState(() {
        emailIsValid = true;
      });
    else {
      setState(() {
        emailIsValid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height(context) * 0.09,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [backbtn(context)]),
                    ),
                    SizedBox(
                      height: height(context) * 0.04,
                    ),
                    Container(
                      child: Text(
                        "Enregistrement",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: height(context) * 0.02,
                    ),
                    TextInputWithIcon(
                      icon: Icons.arrow_drop_down,
                      hint: "Burkina Faso",
                    ),
                    SizedBox(
                      height: height(context) * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: height(context) * 0.08,
                        width: width(context) * 0.8,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFf6f7fb),
                          border: Border.all(
                              color: startMailEdit == true
                                  ? (emailIsValid
                                      ? Color(0xFFcbcbcb)
                                      : Colors.red)
                                  : Color(0xFFcbcbcb)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: TextField(
                            controller: _emailController,
                            onChanged: (value) {
                              setState(() {
                                startMailEdit = true;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "adresse email",
                              hintStyle: kBodyText,
                            ),
                            style: kBodyText,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(context) * 0.005,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width(context) * 0.06),
                      child: Visibility(
                        visible: startMailEdit ? !emailIsValid : false,
                        child: Row(children: [
                          Text("Entrer une adresse email valide",
                              style: TextStyle(color: Colors.red))
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: height(context) * 0.03,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: politicsIsOk,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    politicsIsOk = !politicsIsOk;
                                  });
                                }),
                            Expanded(
                                child: RichText(
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                  text: "J’ai lu et je valide la ",
                                  children: [
                                    TextSpan(
                                        text:
                                            "Politique de confidentialité Accord de l’utilisateur ",
                                        style: TextStyle(
                                            color: Color(0xFF8eccff))),
                                    TextSpan(text: "et"),
                                    TextSpan(
                                        text:
                                            " Politique de confidentialité relative aux enfants",
                                        style:
                                            TextStyle(color: Color(0xFF8eccff)))
                                  ],
                                  style: TextStyle(color: Color(0xFFcfcfcf))),
                            ))
                          ]),
                    ),
                    SizedBox(
                      height: height(context) * 0.03,
                    ),
                    InkWell(
                        onTap: () {
                          if (emailIsValid && politicsIsOk) {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.leftToRight,
                                 duration: Duration(milliseconds:500),
                      reverseDuration: Duration(milliseconds: 500),
                                    child: CheckingCodeScreen(),
                                    childCurrent: CheckingCodeScreen()));
                          }
                        },
                        child: Container(
                          width: width(context) * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: (emailIsValid && politicsIsOk)
                                ? Colors.blue
                                : Color(0xFFd3e5fd),
                          ),
                          child: TextButton(
                            onPressed: null,
                            child: Text(
                              "Obtenir le code de vérification",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: height(context) * 0.03,
                    ),
                    GoogleConnect()
                  ]))),
    );
  }
}
