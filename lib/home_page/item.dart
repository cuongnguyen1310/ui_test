import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemTopServiceWidget extends StatelessWidget {
  final backgroundImage;
  const ItemTopServiceWidget(
    String this.backgroundImage, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      // color: Colors.orange,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Stack(
        children: [
          Image.asset(
            backgroundImage,
            scale: 2,
          ),
          Positioned(
            left: 120,
            top: 30,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Image.asset(
                      'assets/icons/avatar.png',
                      scale: 2,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Miss Zachary Will",
                          style: GoogleFonts.hind(
                            textStyle: const TextStyle(
                              color: Color(0xFF1D1F24),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              // Các thuộc tính khác của TextStyle
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
                              // Các thuộc tính khác của TextStyle
                            ),
                          ),
                        ),
                        Text(
                          "Doloribus saepe aut necessit qui non qui.",
                          style: GoogleFonts.hind(
                            textStyle: const TextStyle(
                              color: Color(0xFF6B6B6B),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              // Các thuộc tính khác của TextStyle
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  // color: Colors.yellow,
                                  padding: EdgeInsets.all(2.5),
                                  child: Image.asset(
                                    'assets/icons/star.png',
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

                                        // Các thuộc tính khác của TextStyle
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(2.5, 2.5, 0, 0),
                              padding: EdgeInsets.fromLTRB(24, 6, 25, 6),
                              // color: Color(0xFF827BEB),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xFF827BEB),
                              ),
                              child: Text("Book Now"),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
