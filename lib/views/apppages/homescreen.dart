import 'package:flutter/material.dart';
import 'package:silma_connect/constant.dart';
import 'package:silma_connect/views/apppages/widgets/rooms-widgets.dart';
import 'package:silma_connect/views/apppages/widgets/scenes-widgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Color(0xFF458df9),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height(context) * 0.09,
                  ),
                  Container(
                    child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: width(context) * 0.03),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.menu,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Ma maison",
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
                              height: height(context) * 0.023,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: width(context) * 0.06),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.flash_on_rounded,
                                                size: 35, color: Colors.white),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              "Ligthing",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            )
                                          ]),
                                    ),
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "19 C",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 27),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              "Temp Outside",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            )
                                          ]),
                                    ),
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "25 C",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 27),
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              "Temp Indoor",
                                              style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            )
                                          ]),
                                    )
                                  ]),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: height(context) * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Column(children: [
                      SizedBox(
                        height: height(context) * 0.02,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: width(context) * 0.05),
                          padding: EdgeInsets.symmetric(
                              horizontal: width(context) * 0.02,
                              vertical: height(context) * 0.02),
                          decoration: BoxDecoration(
                              color: Color(0xFFf2f2f2),
                              borderRadius: BorderRadius.circular(25)),
                          child: Container(
                        
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.energy_savings_leaf,
                                            size: 27,
                                            color: Color(0xFF716e6b),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "29,5 KWh",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "Consommation du jour",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                  SizedBox(
                                    width: width(context) * 0.02,
                                  ),
                                  Container(
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.energy_savings_leaf,
                                            size: 27,
                                            color: Color(0xFF716e6b),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "303 KWh",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "Consommation du mois",
                                                style: TextStyle(fontSize: 10),
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                ]),
                          )),
                      SizedBox(
                        height: height(context) * 0.03,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFf2f2f2),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: width(context) * 0.05,
                                vertical: height(context) * 0.04),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Scènes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.add)
                                        ]),
                                  ),
                                  SizedBox(
                                    height: height(context) * 0.015,
                                  ),
                                  SceneBlock(),
                                  SizedBox(
                                    height: height(context) * 0.015,
                                  ),
                                  Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Pièces",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.add)
                                        ]),
                                  ),
                                  SizedBox(
                                    height: height(context) * 0.02,
                                  ),
                                  RoomBlock()
                                ])),
                      )
                    ]),
                  ),
                ]),
          )),
    );
  }
}
