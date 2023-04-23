import 'package:coffee_app/theme.dart';
import 'package:coffee_app/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kapepe Coffee',
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          scaffoldBackgroundColor: AppTheme.whiteColor),
      home: const SplashScreen(),
    );
  }
}
