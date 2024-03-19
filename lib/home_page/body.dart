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
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: const Text("He'd have you all unravel at the"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                child: const Text('Heed not the rabble'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                child: const Text('Sound of screams but the'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                child: const Text('Who scream'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: const Text('Revolution is coming...'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: const Text('Revolution, they...'),
              ),
            ],
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
