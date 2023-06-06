import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var mainBlue = const Color(0xFF051c3e);
    var mainYellow = const Color(0xFFffc722);
    var mainMaroon = const Color(0xFF8c1e2e);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: SlideInDown(
              preferences:
                  const AnimationPreferences(duration: Duration(seconds: 5)),
              child: Container(
                height: height * 0.5,
                width: width,
                color: mainBlue,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SlideInUp(
              preferences:
                  const AnimationPreferences(duration: Duration(seconds: 5)),
              child: Container(
                height: height * 0.5,
                width: width,
                color: mainMaroon,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tada(
                preferences: const AnimationPreferences(
                    offset: Duration(seconds: 5),
                    duration: Duration(seconds: 2)),
                child: Image.asset(
                  "assets/denver_nuggets.png",
                  height: height * 0.4,
                  width: width * 0.5,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
