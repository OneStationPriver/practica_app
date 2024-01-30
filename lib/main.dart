import 'package:flutter/material.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 65, left: 25),
              child: Image(
                image: AssetImage("assets/images/img.png"),
                width: 310,
                height: 187,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 29),
                  child: Text(
                    "Login Details",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
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
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: EdgeInsets.only(left: 227, right: 31),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff635C5C),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 34,),
            GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 60,
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
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () {

            //     },
            //     child: Text(
            //       "Login",
            //       style: TextStyle(
            //         color: Colors.blue,
            //       ),
            //     ),
            //   ),
            //   // color
            // ),
          ],
        ),
      ),
    );
  }
}
