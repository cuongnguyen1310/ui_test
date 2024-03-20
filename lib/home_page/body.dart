import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_test/home_page/index.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      // color: Colors.green,
      child: ListView(
        children: [
          // Headers(),
          const Sliders(),
          Container(
            // color: Colors.green,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                        'assets/backgrounds/background-top-services.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'Top Services',
                        style: GoogleFonts.hind(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            // Các thuộc tính khác của TextStyle
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xFF154883),
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
          // ListView(
          //   shrinkWrap: true,
          //   padding: const EdgeInsets.all(20),
          //   children: [
          //     Container(
          //       height: 50,
          //       color: Colors.amber[600],
          //       child: Stack(
          //         children: [
          //           Image.asset(
          //             "assets/backgrounds/background-item-1.png",
          //             scale: 2,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            // margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            // color: Colors.purple,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemTopServiceWidget(
                    'assets/backgrounds/background-item-1.png'),
                ItemTopServiceWidget(
                    'assets/backgrounds/background-item-2.png'),
                ItemTopServiceWidget(
                    'assets/backgrounds/background-item-3.png'),
              ],
            ),
          ),
          Container(
            // color: Colors.green,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Image.asset(
                        'assets/backgrounds/background-top-services.png'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'Recommended Workshops',
                        style: GoogleFonts.hind(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            // Các thuộc tính khác của TextStyle
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xFF154883),
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
          GridView.count(
            childAspectRatio: 1 / 2,
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: <Widget>[
              RecommendationItem(),
              RecommendationItem(),
              RecommendationItem(),
              RecommendationItem(),
            ],
          )
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/backgrounds/background-item-recommendation.png",
                scale: 2,
              ),
              Positioned(
                right: 0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                  padding: EdgeInsets.fromLTRB(2.5, 0, 2.5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xB3FFFFFF),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2.5),
                        child: Image.asset(
                          "assets/icons/star.png",
                          scale: 2,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 2.5, 0),
                        // color: Colors.red,
                        child: Text(
                          "4.9",
                          style: GoogleFonts.hind(
                            textStyle: const TextStyle(
                              color: Color(0xFF1D1F24),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            // color: Colors.pink,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Miss Zachary Will",
                      style: GoogleFonts.hind(
                        textStyle: const TextStyle(
                          color: Color(0xFF1D1F24),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "Beautician",
                      style: GoogleFonts.hind(
                        textStyle: const TextStyle(
                          color: Color(0xFF827BEB),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 2.5, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Occaecati aut nam beatae quo non deserunt consequatur.",
                        style: GoogleFonts.hind(
                          textStyle: const TextStyle(
                            color: Color(0xFF6B6B6B),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 2.5, 0, 0),
                        padding: EdgeInsets.fromLTRB(24, 6, 25, 6),
                        // color: Color(0xFF827BEB),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF827BEB),
                        ),
                        child: Text("Book Workshop"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 203,
        width: 390,
        child: Stack(
          children: [
            Image.asset("assets/backgrounds/background-slider.png"),
            Container(
              height: 162,
              margin: const EdgeInsets.fromLTRB(30, 15, 0, 0),
              child: Image.asset("assets/icons/text-slider.png"),
            ),
            Container(
              height: 203,
              margin: const EdgeInsets.fromLTRB(240, 0, 0, 0),
              child: Image.asset("assets/icons/model-slider.png"),
            ),
          ],
        ),
      ),
    );
  }
}
