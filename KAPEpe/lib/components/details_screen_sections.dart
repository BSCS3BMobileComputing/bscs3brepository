
import 'package:coffee_app/components/category_card.dart';
import 'package:coffee_app/theme.dart';
import 'package:flutter/material.dart';

class AddToCartCard extends StatelessWidget {
  const AddToCartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Kunin Mo Na Pls!     ',
              style: TextStyle(
                  color: AppTheme.whiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
          SizedBox(
              height: 20,
              child: VerticalDivider(
                color: Colors.white,
              )),
          Text('    ₱69',
              style: TextStyle(
                  color: AppTheme.whiteColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
        ],
      ),
    );
  }
}

class SizeListSection extends StatelessWidget {
  const SizeListSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: true,
                iconData: null,
                title: "Maliit"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: false,
                iconData: null,
                title: "Sakto"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: CategoryItem(
                isSelected: false,
                iconData: null,
                title: "Malaki"),
          ),
        ],
      ),
    );
  }
}
