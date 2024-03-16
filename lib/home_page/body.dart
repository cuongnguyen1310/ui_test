import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Headers(),
        const Sliders(),
        SizedBox(
          // color: Colors.green,
          height: 38,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Image.asset('assets/backgrounds/background-top-services.png'),
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
        Column(
          children: [
            Container(
              height: 154,
              child: Stack(
                children: [
                  Container(
                    height: 154,
                    child:
                        Image.asset('assets/backgrounds/background-item-1.png'),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
