import 'package:flutter/widgets.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          'assets/kapepelogo.png',
          width: size.width / 2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8.0),
          child: Text(
            'Sa sobrang sarap ng KAPEpe,\n babalik-balikan mo to!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
          child: Text(
            'The best source, the fresh-est taste, the most powerful flavor.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
