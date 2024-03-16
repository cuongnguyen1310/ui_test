import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  const Headers({super.key});

  @override
  State<Headers> createState() => _HeadersState();
}

class _HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 113,
          width: 358,
          // color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      // color: Colors.grey,
                      width: 134,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 44,
                            child: Image(
                                image:
                                    AssetImage('assets/icons/menu-burger.png')),
                          ),
                          Image(
                            image: AssetImage('assets/icons/logo.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 102,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 44,
                            child: Image(
                              image:
                                  AssetImage('assets/icons/notification.png'),
                            ),
                          ),
                          SizedBox(
                            width: 44,
                            child: Image(
                              image:
                                  AssetImage('assets/icons/shopping-cart.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true, itemBuilder: (context, index) {}),
              SizedBox(
                height: 51,
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
          )),
    );
  }
}
