import 'package:flutter/material.dart';
import 'package:practica_app/helper.dart';

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

    final RatioCalculator ratioCalculator = RatioCalculator();
    ratioCalculator.updateRatio(context: context, figmaWidth: 390, figmaHeight: 844);

    return Scaffold(
      body: SafeArea(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  margin: EdgeInsets.only(left: 29, right: 31),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username, email & phone number",
                      fillColor: Colors.white,
                      filled: true,
                      //margin: EdgeInsets.only(left: 29, right: 31),
                      contentPadding: EdgeInsets.all(25),
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
                SizedBox(height: ratioCalculator.calculateHeight(1),),
                Container(
                  // padding: EdgeInsets.symmetric(vertical: ),
                  margin: EdgeInsets.only(left: 28, right: 32),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      //margin: EdgeInsets.only(left: 29, right: 31),
                      contentPadding: EdgeInsets.all(25),
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
            GestureDetector(
              onTap: () {},
              child: Container(
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
            ),
            SizedBox(
              height: ratioCalculator.calculateHeight(34),
            ),
            Center(
              child: Container(
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
                        ),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
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
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
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
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
