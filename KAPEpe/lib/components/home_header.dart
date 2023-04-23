import 'package:coffee_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'assets/jose-rizal-coloring-page_1.png'),
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on_sharp,
                color: AppTheme.primaryColor,
              ),
              Text(
                'Carig, Tuguegarao City',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SvgPicture.asset(
            'assets/bell-notification-svgrepo-com.svg',
            height: 32,
          ),
        ],
      ),
    );
  }
}
