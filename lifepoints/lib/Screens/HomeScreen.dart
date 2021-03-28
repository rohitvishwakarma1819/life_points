import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lifepoints/Utilities.dart';
import 'dart:math' as math;

import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List adImageList = [
    "images/man.png",
    "images/photo-of-woman-leaning.png",
    "images/photo-of-woman-wearing-denim-polo-3393501@2x.png",
    "images/Image 21@2x.png",
    "images/Image 30@2x.png",
    "images/Image 32@2x.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Utilities.purple,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(
                        "images/man.png",
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "DavidW",
                      style: TextStyle(fontSize: 16, color: Utilities.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Points",
                          style: TextStyle(color: Utilities.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Utilities.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 4.0,
                      percent: 0.40,
                      center: Stack(
                        children: [
                          Image.asset(
                            "images/life_points_logo.png",
                            height: 25,
                          ),
                          Positioned(
                              bottom: 1,
                              right: 1,
                              child: Text(
                                "1",
                                style: TextStyle(color: Utilities.white),
                              ))
                        ],
                      ),
                      progressColor: Colors.lightBlue,
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "NEWS",
                style: TextStyle(color: Utilities.white, fontSize: 18),
              ),
            ),
            CarouselSlider(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.63,
                  enlargeCenterPage: true,
                ),
                items:
                    adImageList.map((e) => sliderCards(imageURI: e)).toList()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items:  <BottomNavigationBarItem>[
         homeBottomNavigationBarItem(Icons.home, Colors.grey),
          homeBottomNavigationBarItem(Icons.home, Colors.grey),
          homeBottomNavigationBarItem(Icons.home, Colors.grey),
          homeBottomNavigationBarItem(Icons.home, Colors.grey),

        ],
        backgroundColor: Colors.green,
      ),
    );
  }

  Widget sliderCards(
          {String title = "Nike Joyride",
          String imageURI = "images/man.png",
          String description = "Lorem Ipsum is simply dummy text of the"}) =>
      Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                            // topRight: Radius.circular(20.0),
                            // topLeft: Radius.circular(20.0)
                            Radius.circular(20)),
                        child: Image.asset(
                          imageURI,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title != null
                        ? Positioned(
                            child: Align(
                            alignment: Alignment.bottomCenter,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                              child: Container(
                                height: 70,
                                width: double.infinity,
                                color: Color(0xff171732),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0, vertical: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(title),
                                      ),
                                      Flexible(
                                        child: Text(
                                          description,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ))
                        : Container()
                  ],
                ),
              ),
            ],
          ));
  BottomNavigationBarItem homeBottomNavigationBarItem(IconData itemIcon,Color itemColor){
    return BottomNavigationBarItem(icon: Icon(itemIcon, color: itemColor,size: 20,),label: "" );
  }
}
