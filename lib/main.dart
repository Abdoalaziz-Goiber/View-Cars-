 import 'package:flutter/material.dart';
import 'package:myapp/1Findcae.dart';
import 'package:myapp/2Login.dart';
import 'package:myapp/3LoginUp.dart';
import 'package:myapp/5home.dart'; 

void main() {
  runApp(const Mayapp());
}

class Mayapp extends StatefulWidget {
  const Mayapp({super.key});

  @override
  State<Mayapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mayapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // SplashScreen بداية من شاشة البداية
      routes: {
        "FinfCar": (context) => FinfCar(),
        "login": (context) => login(),
        "LoginUp": (context) => LoginUp(),
        "HomeScreen": (context) => HomeScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
 
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FinfCar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1E1E1E),       
              Color(0xFF2C2C2C),    
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      blurRadius: 30,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'asset/star.png',         
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
           
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'مرحبا بكم في عالم السيارات الفاخرة',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
          
              Text(
                'أفضل تجربة للسيارات في متناول يدك',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
