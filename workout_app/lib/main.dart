// ignore: library_private_types_in_public_api
import 'package:workout_app/screens/welcome_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp
    (
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
    );
  }
}
