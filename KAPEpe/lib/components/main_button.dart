import 'package:coffee_app/theme.dart';
import 'package:coffee_app/views/homepage.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30, right: 30),
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: const Text('Tara, Pasok Inside!',
            style: TextStyle(
                color: AppTheme.whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 18)),
      ),
    );
  }
}
