import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: getMyHomePage(),
      ),
    );
  }

  Widget getMyHomePage() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Headers(),
        Contents(),
      ],
    );
  }
}

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
        height: 203,
        width: 390,
        color: Colors.green,
      ),
    );
  }
}

class Contents extends StatefulWidget {
  const Contents({super.key});

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        TopServices(),
      ],
    );
  }
}

class TopServices extends StatelessWidget {
  const TopServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 374,
      color: Colors.pink,
      child: Row(
        children: [
          Container(
            child: SvgPicture.asset(
              'assets/backgrounds/background-top-services.svg',
            ),
          ),
        ],
      ),
    );
  }
}
