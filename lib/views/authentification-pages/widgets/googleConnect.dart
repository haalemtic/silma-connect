import 'package:flutter/material.dart';

class GoogleConnect extends StatefulWidget {
  const GoogleConnect({Key? key}) : super(key: key);

  @override
  State<GoogleConnect> createState() => _GoogleConnectState();
}

class _GoogleConnectState extends State<GoogleConnect> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xFFcbcbcb).withOpacity(0.5),
      child: Padding(
          padding: EdgeInsets.all(5),
          child: Image.asset("assets/images/google.png")),
    );
  }
}
