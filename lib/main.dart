import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practica_app/helper.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //aqui llamamos a la clase responsive. antes de todo se instala en el pubspec.yaml
    final RatioCalculator ratioCalculator = RatioCalculator();
    ratioCalculator.updateRatio(
      context: context,
      figmaWidth: 390,
      figmaHeight: 844,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 21,
                ),
                margin: EdgeInsets.only(left: 25, right: 55),
                child: Image(
                  image: AssetImage("assets/images/img.png"),
                  width: ratioCalculator.calculateWidth(310),
                  height: ratioCalculator.calculateHeight(187),
                ),
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(36),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 29),
                    child: Text(
                      "Login Details",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Outfit",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(18),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: ratioCalculator.calculateWidth(330),
                    height: ratioCalculator.calculateHeight(60),
                    margin: EdgeInsets.only(left: 29, right: 31),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username, email & phone number",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color(0xff887E7E),
                            width: 1,
                          ),
                        ),
                      ),
                      style: TextStyle(
                          color: Color(0xff635C5C),
                          fontFamily: "Outfit",
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: ratioCalculator.calculateHeight(11),
                  ),
                  Container(
                    width: ratioCalculator.calculateWidth(330),
                    height: ratioCalculator.calculateHeight(60),
                    margin: EdgeInsets.only(left: 28, right: 32),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Color(0xff887E7E),
                            width: 1,
                          ),
                        ),
                      ),
                      style: TextStyle(
                          color: Color(0xff635C5C),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Outfit",
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: ratioCalculator.calculateHeight(6),
                  ),
                  Container(
                    //width: 132,
                    //height: 20,
                    margin: EdgeInsets.only(right: 31),
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(
                        //fontWeight: FontWeight.w500,
                        fontFamily: "Outfit",
                        color: Color(0xff635C5C),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(34),
              ),
              ButtonBar(
                children: [
                  Container(
                    height: ratioCalculator.calculateHeight(60),
                    width: ratioCalculator.calculateWidth(330),
                    margin: EdgeInsets.only(left: 28, right: 32),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff0B6EFE),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Outfit",
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(34),
              ),
              Center(
                child: Row(
                  children: [
                    // Esta es la raya de lado izquierdo
                    Container(
                      width: ratioCalculator.calculateWidth(132),
                      height: ratioCalculator.calculateHeight(3),
                      margin: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [ Colors.white, Color(0xff0B6EFE)],
                        ),
                      ),
                    ),
                    Container(
                      //width: ratioCalculator.calculateWidth(84),
                      //height: ratioCalculator.calculateHeight(15),
                      //margin: EdgeInsets.only(left: 145, right: 161),
                      child: Text(
                        "Or Sign up With",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Outfit",
                          color: Color(0xff555252),
                        ),
                      ),
                    ),
                    // Esta es la raya de lado derecho
                    Container(
                      width: ratioCalculator.calculateWidth(132),
                      height: ratioCalculator.calculateHeight(3),
                      margin: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff0B6EFE), Colors.white],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ratioCalculator.calculateHeight(32),
              ),
              // iconos-----------------------------------------------------------------------------------
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: ratioCalculator.calculateWidth(52),
                        height: ratioCalculator.calculateHeight(52),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffECE9EC),
                          border: Border.all(
                            color: Color(0xffF89AEE),
                            width: 0.4,
                          ),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Google logo.svg",
                          semanticsLabel: 'Acme Logo',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ratioCalculator.calculateWidth(16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: ratioCalculator.calculateWidth(52),
                        height: ratioCalculator.calculateHeight(52),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffECE9EC),
                          border: Border.all(
                            color: Color(0xffF89AEE),
                            width: 0.4,
                          ),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Facbook.svg",
                          semanticsLabel: 'Acme Logo',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ratioCalculator.calculateWidth(16),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: ratioCalculator.calculateWidth(52),
                        height: ratioCalculator.calculateHeight(52),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffECE9EC),
                          border: Border.all(
                            color: Color(0xffF89AEE),
                            width: 0.4,
                          ),
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Group.svg",
                          semanticsLabel: 'Acme Logo',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // WaveWidget(
              //   config: CustomConfig(durations: durations, heightPercentages: heightPercentages),
              // ),
              // CustomPaint(
              //   child: Container(
              //     height: 50,
              //     width: 50,
              //     color: Colors.lightBlue,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
