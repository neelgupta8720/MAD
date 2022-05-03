import 'package:email_password_login/pages/Discover.dart';
import 'package:email_password_login/pages/Profile.dart';
import 'package:email_password_login/pages/Report.dart';
import 'package:email_password_login/pages/Training_Home.dart';
import 'package:email_password_login/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          splash: Center(
              child: Image.network(
            "https://thumbs.dreamstime.com/b/heavy-dumbbell-hand-cartoon-gym-bodybuilding-weightlifting-symbol-sport-vector-illustration-isolated-white-background-86475681.jpg",
          )),
          duration: 1000,
          splashTransition: SplashTransition.scaleTransition,
          nextScreen: LoginScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FitnessBottomNav extends StatefulWidget {
  //const FitnessBottomNav({Key? key}) : super(key: key);

  @override
  State<FitnessBottomNav> createState() => FitnessBottomNavState();
}

class FitnessBottomNavState extends State<FitnessBottomNav> {
  int _selectedIndex = 0;
  //static const List<Widget> _widgetOptions = <Widget>[];

  final List<Widget> _children = [
    Training_Home(),
    DiscoverPage(),
    ReportsPage(),
    ProfileUI2(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent.shade400,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: "Training",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: "Report",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
