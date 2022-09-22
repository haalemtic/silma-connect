import 'package:flutter/material.dart';
import 'package:silma_connect/constant.dart';

class RoomView extends StatefulWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  State<RoomView> createState() => _RoomViewState();
}

class _RoomViewState extends State<RoomView> {
  scanNearDevices() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        context: context,
        isScrollControlled: false,
        builder: (context) => NearDeviceScanning());
  }

  addNewDevice() {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(500, height(context) * 0.65, 5,
          20), //here you can specify the location,
      items: [
        PopupMenuItem(
          value: 0,
          onTap: () {},
          child: Text("Ajouter Manuellement"),
        ),
        PopupMenuItem(
          value: 1,
          onTap: () {},
          child: Text("Lancer une recherche"),
        ),
      ],
    ).then((value) {
      if (value == 0) {
      } else if (value == 1) {
        scanNearDevices();
      } else
        () {};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(color: Color(0xFF458df9)),
        child: Container(
          height: height(context),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: height(context) * 0.09,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width(context) * 0.03),
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
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Salon",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ]),
            ),
            SizedBox(
              height: height(context) * 0.04,
            ),
            Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.symmetric(horizontal: width(context) * 0.03),
                decoration: BoxDecoration(
                    color: Color(0xFFf2f2f2),
                    borderRadius: BorderRadius.circular(25)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.thermostat),
                                    Text(
                                      "25 C",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text(
                                  "Température",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ]),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.water_drop),
                                    Text(
                                      "50 %",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text(
                                  "Humidité",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ]),
                        ),
                        Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.lightbulb),
                                    Text(
                                      "80 %",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Text(
                                  "Luminosité",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.6)),
                                )
                              ]),
                        ),
                      ]),
                )),
            SizedBox(
              height: height(context) * 0.05,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width(context) * 0.03),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Consommation du jour",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "27,45 Kwh",
                      style: TextStyle(color: Colors.white.withOpacity(0.6)),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width(context) * 0.03),
              height: height(context) * 0.23,
              width: double.infinity,
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFf2f2f2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: height(context) * 0.02,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width(context) * 0.03,
                          vertical: height(context) * 0.01),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Appareils",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                addNewDevice();
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 125,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.lightbulb,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Ampoule",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "80 %",
                                          style: TextStyle(
                                              color:
                                                  Colors.blue.withOpacity(0.5),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        )
                                      ]),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.point_of_sale,
                                          color: Colors.green,
                                        )
                                      ]),
                                ],
                              )),
                        ),
                      ),
                    )
                  ])),
            ))
          ]),
        ),
      )),
    );
  }
}

class NearDeviceScanning extends StatefulWidget {
  const NearDeviceScanning({Key? key}) : super(key: key);

  @override
  State<NearDeviceScanning> createState() => _NearDeviceScanningState();
}

class _NearDeviceScanningState extends State<NearDeviceScanning> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.5, 
      width: double.infinity,
      color: Color(0xFF265ed7),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            width: 50,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: height(context) * 0.025),
          child: Text("Recherche d'appareils à proximité...",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )),
        )
      ]),
    );
  }
}
