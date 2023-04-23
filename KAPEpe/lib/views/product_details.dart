import 'package:coffee_app/components/details_screen_sections.dart';
import 'package:coffee_app/theme.dart';
import 'package:flutter/material.dart';

class ProducDetailsScreen extends StatelessWidget {
  const ProducDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
            'assets/brown-coffee02.png',
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            fit: BoxFit.cover
          ),
        DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.8,
            builder: (context, controller) {
              return Container(
                child: ListView(
                  controller: controller,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20, bottom:0),
                      child: Text("Attributes",
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 10,
                      ),
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Kopi',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black45,
                            ),
                          ),
                          Text('Choco Puff',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                          SizedBox(
                            height: 40,
                            child: VerticalDivider(
                              color: Colors.black45,
                            ),
                          ),
                          Text('Milk',
                              style: TextStyle(
                                  color: AppTheme.darkColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20, bottom: 10),
                      child: Text("Gaano Kalaki Gusto Mo?",
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                    const SizeListSection(),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 30.0,
                        top: 10,
                      ),
                      child: Text("About",
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, top: 10, bottom: 10, right: 30),
                      child: Text(
                          "Lasap na lasap ang sarap lalo na pag nag koFa ka ng Kapepe. Taste Coffee Responsibly.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: AppTheme.darkColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ),
                    const AddToCartCard(),
                  ],
                ),
                decoration: BoxDecoration(
                    color: AppTheme.whiteColor,
                    borderRadius: BorderRadius.circular(25)),
              );
            }),
        const Positioned(
          top: 25,
          right: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          )
        ),   
        const Positioned(
          top: 25,
          left: 15,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: BackButton(
              color: Colors.black,
            ),
          )
        ),
      ]),
    );
  }
}