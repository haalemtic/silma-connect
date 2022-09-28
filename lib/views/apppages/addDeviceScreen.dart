import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:page_transition/page_transition.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:silma_connect/constant.dart';

class AddDeviceScreen extends StatefulWidget {
  const AddDeviceScreen({Key? key}) : super(key: key);

  @override
  State<AddDeviceScreen> createState() => _AddDeviceScreenState();
}

class _AddDeviceScreenState extends State<AddDeviceScreen> {
  void initState() {
    super.initState();
  }

  void aboutCameraAutorizationBottomModal(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        isScrollControlled: false,
        builder: (context) => AboutCameraAutorization());
  }

  void aboutBluetoothAutorizationBottomModal(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        isScrollControlled: false,
        builder: (context) => AboutBluetoothAutorization());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: height(context) * 0.09,
        ),
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Text(
              "Ajouter un appareil",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(seconds: 1),
                          reverseDuration: Duration(seconds: 1),
                          type: PageTransitionType.theme,
                          child: ScanScreen(),
                          childCurrent: AddDeviceScreen()));

                  aboutCameraAutorizationBottomModal(context);
                },
                child: Icon(Icons.center_focus_weak))
          ]),
        ),
        SizedBox(
          height: height(context) * 0.023,
        ),
        Container(
          child: Row(
            children: [
              SpinKitRipple(
                duration: Duration(seconds: 2),
                color: Color.fromARGB(255, 167, 181, 235),
              ),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Color.fromARGB(255, 177, 177, 177)),
                        text:
                            "Recherche des appareils à proximité. Assurez-vous que votre appareil est en ",
                        children: [
                      TextSpan(
                          text: "mode couplage",
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                PageTransition(
                                    duration: Duration(seconds: 1),
                                    reverseDuration: Duration(seconds: 1),
                                    type: PageTransitionType.theme,
                                    child: HelpForCouplage(),
                                    childCurrent: AddDeviceScreen())),
                          style: TextStyle(color: Colors.blue))
                    ])),
              )
            ],
          ),
        ),
        SizedBox(
          height: height(context) * 0.023,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: width(context) * 0.02,
                vertical: height(context) * 0.02),
            decoration: BoxDecoration(
                color: Color(0xFFf2f2f2),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activer le Wi-Fi",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w200),
                ),
                Container(
                  child: Stack(children: [
                    Icon(
                      Icons.wifi,
                      size: 30,
                    ),
                    Positioned(
                        right: width(context) * 0.01,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Text("!"),
                          ),
                        ))
                  ]),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height(context) * 0.023,
        ),
        InkWell(
          onTap: () {
            aboutBluetoothAutorizationBottomModal(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: width(context) * 0.02,
                vertical: height(context) * 0.02),
            decoration: BoxDecoration(
                color: Color(0xFFf2f2f2),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activer le Bluetooth",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w200),
                ),
                Container(
                  child: Stack(children: [
                    Icon(
                      Icons.bluetooth,
                      size: 30,
                    ),
                    Positioned(
                        right: width(context) * 0.01,
                        child: Container(
                          height: 15,
                          width: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Text("!"),
                          ),
                        ))
                  ]),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: height(context) * 0.023,
        ),
        Expanded(
            child: Container(
                width: double.infinity,
                color: Color(0xFF265ed7),
                child: Center(
                    child: SpinKitRipple(
                  size: height(context) * 0.8,
                  duration: Duration(seconds: 10),
                  color: Color(0xFFf2f2f2),
                )))),
        SizedBox(
          height: height(context) * 0.01,
        ),
        Center(
            child: TextButton(
          onPressed: () {},
          child: Text(
            "Ajouter manuellement",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ))
      ]),
    ));
  }
}

class AboutAutorization extends StatefulWidget {
  const AboutAutorization({Key? key}) : super(key: key);

  @override
  State<AboutAutorization> createState() => _AboutAutorizationState();
}

class _AboutAutorizationState extends State<AboutAutorization> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: height(context) * 0.7,
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: width(context) * 0.05),
                child: Text(
                  "Fermer",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 17),
                ),
              ),
            ),
            Container(),
          ],
        )),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child: Text(
              "L'application SILMA-CONNECT demande les autorisations d'accès suivantes.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child: Text(
            "La sécurité de la confidentialité de vos informations personnelles est garantie lorsque les autorisations suivantes sont accordées.",
            style: TextStyle(
                color: Color.fromARGB(255, 177, 177, 177), fontSize: 13),
          ),
        ),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          padding: EdgeInsets.symmetric(
              horizontal: width(context) * 0.02,
              vertical: height(context) * 0.02),
          decoration: BoxDecoration(
              color: Color(0xFFf2f2f2),
              borderRadius: BorderRadius.circular(10)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Container(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.location_on,
                                size: 20, color: Colors.white))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Localisation",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Recherchez des emplacements, ajoutez des appareils, obtenez une liste de réseaux Wi-Fi et effectuez une automatisation de scène.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 177, 177, 177), fontSize: 15),
                )
              ],
            ))),
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 139, 139, 139).withOpacity(0.5),
            )
          ]),
        ),
        SizedBox(
          height: height(context) * 0.07,
        ),
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
                width: width(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      "Continuer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )),
          ),
        )
      ]),
    );
  }
}

class HelpForCouplage extends StatefulWidget {
  const HelpForCouplage({Key? key}) : super(key: key);

  @override
  State<HelpForCouplage> createState() => _HelpForCouplageState();
}

class _HelpForCouplageState extends State<HelpForCouplage> {
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
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Text(
                            "How do I use \"Auto Scan\"?",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          Container()
                        ]),
                  ),
                  SizedBox(
                    height: height(context) * 0.023,
                  ),
                  Text(
                    "Dear user, you can search for the device after resetting the device in the following way (the details are subject to the product manual) :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "1.",
                        children: [
                          TextSpan(
                              text: "Bluetooth device: ",
                              children: [],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          TextSpan(
                              text:
                                  "First, make sure that the device is powered off for more than 10  seconds, then power on the device, and then press and hold the reset button on the device for about 5 seconds until the indicator light of the device starts to flash and the device enters the pairing mode. At this time enter the \"Add Device\" page and wait for searching.",
                              children: [],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 177, 177, 177),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16)),
                        ],
                        style: TextStyle(
                            color: Color.fromARGB(255, 177, 177, 177),
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "2.",
                        children: [
                          TextSpan(
                              text: "Zigbee device: ",
                              children: [],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          TextSpan(
                              text:
                                  "First, if there are multiple Zigbee gateways in your home, please select the gateway that needs to add sub-devices and ensure that it is online, then power off the sub-device for more than 10 seconds, then power on the sub-device, nd then press and hold the reset button on the device for about 5 seconds until the indicator light of the device starts to flash and the device enters the pairing mode. At this time, enter the \"Add Device\" page and wait for scanning.",
                              children: [],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 177, 177, 177),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16)),
                        ],
                        style: TextStyle(
                            color: Color.fromARGB(255, 177, 177, 177),
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "3.",
                        children: [
                          TextSpan(
                              text: "Wired devices: ",
                              children: [],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          TextSpan(
                              text:
                                  "First, make sure that the device is powered off for more than 10  seconds, then power on the device and connect the device to the router so that the phone and the device are the same LAN. press and hold the reset button on the device for about 5 seconds until the indicator light of the device starts to flash and the device enters the pairing mode. At this time, enter the \"Add Device\" page and wait for searching.",
                              children: [],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 177, 177, 177),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16)),
                        ],
                        style: TextStyle(
                            color: Color.fromARGB(255, 177, 177, 177),
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  Text(
                    "For lighting devices, the reset method is to switch the powerof the device three times (on-off-on-off-on) (2~4 between each on and off).",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                  Text(
                    "If you don't have the above types of equipment, you can also try to add the device manually.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                ]),
          )),
    );
  }
}

class AboutBluetoothAutorization extends StatefulWidget {
  const AboutBluetoothAutorization({Key? key}) : super(key: key);

  @override
  State<AboutBluetoothAutorization> createState() =>
      _AboutBluetoothAutorizationState();
}

class _AboutBluetoothAutorizationState
    extends State<AboutBluetoothAutorization> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(right: width(context) * 0.05),
                child: Icon(Icons.close,
                    color: Colors.grey.withOpacity(0.8), size: 30),
              ),
            ),
          ],
        )),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child: Row(
            children: [
              Container(
                  child: Stack(children: [
                Container(
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.bluetooth,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                    top: height(context) * 0.033,
                    left: width(context) * 0.06,
                    child: Container(
                      height: 16,
                      width: 16,
                      child: CircleAvatar(
                          backgroundColor: Colors.green,
                          child:
                              Icon(Icons.check, color: Colors.white, size: 15)),
                    ))
              ])),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Il est conseillé d'activer le Bluetooth.",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: height(context) * 0.01,
                  ),
                  Text(
                    "Activer le Bluetooth pour faciliter l'ajout de certains appareils.",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Color.fromARGB(255, 177, 177, 177),
                        fontSize: 14),
                  )
                ],
              ))
            ],
          ),
        ),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          height: 1,
          width: double.infinity,
          color: Color.fromARGB(255, 177, 177, 177),
        ),
        SizedBox(
          height: height(context) * 0.025,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Autoriser le\nBluetooth",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7), fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Activé",
                            style: TextStyle(
                                color: Color.fromARGB(255, 177, 177, 177),
                                fontSize: 16)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.check_rounded,
                            color: Color.fromARGB(255, 177, 177, 177), size: 20)
                      ],
                    )
                  ]),
            ),
            Container(
              height: height(context) * 0.15,
              width: width(context) * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/bluetooth_autorization.png"))),
            )
          ]),
        ),
        SizedBox(
          height: height(context) * 0.025,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          height: 1,
          width: double.infinity,
          color: Color.fromARGB(255, 177, 177, 177),
        ),
        SizedBox(
          height: height(context) * 0.025,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Activer le\nBluetooth",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7), fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text("Allumer maintenant",
                          style: TextStyle(color: Colors.blue, fontSize: 14)),
                    )
                  ]),
            ),
            Container(
              height: height(context) * 0.15,
              width: width(context) * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bluetooth_enable.png"))),
            )
          ]),
        ),
      ]),
    );
  }
}

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

   void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      //do something
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
      ),
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
      ),
    );
  }
}

class AboutCameraAutorization extends StatefulWidget {
  const AboutCameraAutorization({Key? key}) : super(key: key);

  @override
  State<AboutCameraAutorization> createState() =>
      _AboutCameraAutorizationState();
}

class _AboutCameraAutorizationState extends State<AboutCameraAutorization> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      height: height(context) * 0.7,
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(left: width(context) * 0.05),
                child: Text(
                  "Fermer",
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8), fontSize: 17),
                ),
              ),
            ),
            Container(),
          ],
        )),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child: Text(
              "L'application SILMA-CONNECT demande les autorisations d'accès suivantes.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          child: Text(
            "La sécurité de la confidentialité de vos informations personnelles est garantie lorsque les autorisations suivantes sont accordées.",
            style: TextStyle(
                color: Color.fromARGB(255, 177, 177, 177), fontSize: 13),
          ),
        ),
        SizedBox(
          height: height(context) * 0.03,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
          padding: EdgeInsets.symmetric(
              horizontal: width(context) * 0.02,
              vertical: height(context) * 0.02),
          decoration: BoxDecoration(
              color: Color(0xFFf2f2f2),
              borderRadius: BorderRadius.circular(10)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Container(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        height: 25,
                        width: 25,
                        child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.camera_alt,
                                size: 20, color: Colors.white))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Caméra",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Scannez les codes QR, personnalisez les images, et plus encore.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 177, 177, 177), fontSize: 15),
                )
              ],
            ))),
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 139, 139, 139).withOpacity(0.5),
            )
          ]),
        ),
        SizedBox(
          height: height(context) * 0.07,
        ),
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: width(context) * 0.05),
                width: width(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Center(
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      "Continuer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )),
          ),
        )
      ]),
    );
  }
}
