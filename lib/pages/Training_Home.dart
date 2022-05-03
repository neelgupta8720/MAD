import 'package:email_password_login/pages/Discover.dart';
import 'package:flutter/material.dart';
//import 'package:home_workout/pages/Discover.dart';
//import 'package:home_workout/Bottom_Nav_Pages/Report.dart';



class Training_Home extends StatefulWidget {
  const Training_Home({Key? key}) : super(key: key);

  @override
  State<Training_Home> createState() => _Training_HomeState();
}

class _Training_HomeState extends State<Training_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("HOME WORKOUT"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(30),
              //margin: EdgeInsets.fromLTRB(0, 0, 0, 550),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("15",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("WORKOUT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "6423",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text("KCAL",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("433",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text("MINUTES",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 120, 20, 0),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('7X4 CHALLENGE',
                        style: TextStyle(
                            fontSize: 16,
                            //fontFamily: 'IndieFlower',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.black)),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiscoverPage()),
                          );
                        },
                        child: Ink.image(
                          height: 280,
                          width: 380,
                          image: NetworkImage(
                              'https://cdn.lifehack.org/wp-content/uploads/2018/03/workout-routines-for-men-1024x768.jpeg'),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: Text(
                              "Upper Body",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
            ),
//BEGINNER
            Container(
              margin: EdgeInsets.fromLTRB(20, 460, 20, 0),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('BEGINNER',
                        style: TextStyle(
                            fontSize: 16,
                            //fontFamily: 'IndieFlower',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.black)),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiscoverPage()),
                          );
                        },
                        child: Ink.image(
                          height: 280,
                          width: 380,
                          image: NetworkImage(
                              'https://static.toiimg.com/photo/83005544.cms'),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: Text(
                              "ABS BEGINNER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
            ),
//INTERMEDIATE
            Container(
              margin: EdgeInsets.fromLTRB(20, 800, 20, 0),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('INTERMEDIATE',
                        style: TextStyle(
                            fontSize: 16,
                            //fontFamily: 'IndieFlower',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.black)),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiscoverPage()),
                          );
                        },
                        child: Ink.image(
                          height: 280,
                          width: 380,
                          image: NetworkImage(
                              'https://cdn.lifehack.org/wp-content/uploads/2018/08/stomach-workouts-1024x768.jpg'),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: Text(
                              "ABS INTERMEDIATE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
            ),
//ADVANCED
            Container(
              margin: EdgeInsets.fromLTRB(20, 1140, 20, 0),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('ADVANCED',
                        style: TextStyle(
                            fontSize: 16,
                            //fontFamily: 'IndieFlower',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: Colors.black)),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiscoverPage()),
                          );
                        },
                        child: Ink.image(
                          height: 280,
                          width: 380,
                          image: NetworkImage(
                              'https://www.totaltonetraining.com/wp-content/uploads/2020/12/imgonline-com-ua-resize-1Nlf5cat2RP.jpg'),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: Text(
                              "ABS ADVANCED",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
