import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Headers extends StatefulWidget {
  const Headers({super.key});

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // color: Colors.blue,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  // color: Colors.grey,
                  // width: 134,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(11, 0, 27, 0),
                        child: Image(
                          image: AssetImage('assets/icons/menu-burger.png'),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('assets/icons/logo.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Image(
                          image: AssetImage('assets/icons/notification.png'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 14),
                        padding: const EdgeInsets.all(10),
                        child: const Image(
                          image: AssetImage('assets/icons/shopping-cart.png'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 51,
              margin: const EdgeInsets.only(top: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 295,
                    decoration: const BoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        hintText: "Search here",
                      ),
                    ),
                  ),
                  Container(
                    width: 51,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Image(
                      image: AssetImage("assets/icons/sort.png"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
