import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
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
      body: Stack(
        children: [
          // TODO: widget bawah atau alas
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xfffE5788), Color(0xfff56d5d)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),

          // TODO: widget center untuk card
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,

              // TODO: widget Card
              child: Card(
                elevation: 5,
                child: Stack(
                  children: [
                    // TODO: widget oppacity
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                          decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      )),
                    ),

                    // TODO: Container widget
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // TODO: Container widget
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            50 + MediaQuery.of(context).size.height * 0.35,
                            20,
                            20),
                        child: Center(
                          child: Column(
                            children: [
                              // TODO: Text widget
                              Text(
                                "Beauty sunset at beach!",
                                maxLines: 3,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 25,
                                ),
                              ),

                              // TODO: Row widget
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Text("Tanggal Postingan"),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "20-20-2020",
                                    style: TextStyle(color: Colors.orange),
                                  )
                                ],
                              ),

                              // TODO: Row widget
                              Row(
                                children: [
                                  Spacer(
                                    flex: 10,
                                  ),
                                  Icon(
                                    Icons.thumb_up,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    "99",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    "Very Nice",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(
                                    flex: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
