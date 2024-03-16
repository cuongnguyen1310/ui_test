import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1D1F24),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 73.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/icons/home.svg',
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                    color: Color(0xFF827BEB),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 73.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/icons/explore.svg',
                ),
                const Text(
                  "Explore",
                  style: TextStyle(
                    color: Color(0xFF827BEB),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 73.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                ),
                const Text(
                  "Chat",
                  style: TextStyle(
                    color: Color(0xFF827BEB),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 73.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/icons/blog.svg',
                ),
                const Text(
                  "Blog",
                  style: TextStyle(
                    color: Color(0xFF827BEB),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 73.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/icons/account.svg',
                ),
                const Text(
                  "Account",
                  style: TextStyle(
                    color: Color(0xFF827BEB),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
