import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan15_positioned_loginpage/constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          // TODO: Positioned widget
          Positioned(
            right: -getSmallDiameter(context) / 4,
            top: -getSmallDiameter(context) / 4,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffb226b2),
                    Color(0xffff6da7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          // TODO: Positioned ke-2 widget
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xffb226b2), Color(0xffff4891)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Text(
                  "Dribble",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            ),
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            width: getBigDiameter(context),
            height: getBigDiameter(context),
          ),

          // TODO: positioned ke-3 widget
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfff3e9ee),
              ),
            ),
          ),

          // TODO: Align widget
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        // TODO: widget padding
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.email, color: Colors.red[200]),
                              hintText: "email",
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // TODO: widget padding
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: TextField(
                            // TODO: supaya passwordnya gakebaca
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.red[200],
                                ),
                                hintText: "Password",
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffff4891)),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ))
              ],
            ),
          ),

          // TODO: align widget
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(120, 370, 20, 100),
              child: Text("Forgot Password"),
            ),
          ),

          // TODO: align widget
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 420, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // TODO: widget ke-1
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffff4891),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: Image.network(
                        "https://cdn.icon-icons.com/icons2/2108/PNG/512/facebook_icon_130940.png"),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    elevation: 0,
                    child: Image.network(
                        "https://image.flaticon.com/icons/png/512/124/124021.png"),
                  ),
                ],
              ),
            ),
          ),

          // TODO: widget terakhir
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 600, 0, 10),
                  child: Text(
                    "Don't Have Account?",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Align(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 600, 0, 10),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red[300]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
