import 'package:agriconnect/home.dart';
import 'package:agriconnect/register.dart';
import 'package:agriconnect/welcome.dart';
import 'package:agriconnect/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:agriconnect/otp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'welcome',
      debugShowCheckedModeBanner: false,
      routes: {
        'welcome': (context) => Welcome(),
        'register': (context) => SignUp(),
        'login': (context) => Login(),
        'home': (context) => Home(),
        'otp': (context) => OTP_verification(),
      },
    );
  }
}


