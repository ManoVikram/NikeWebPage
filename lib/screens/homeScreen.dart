import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/tabBar.dart';
import '../widgets/priceTag.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.blueGrey[100],
                    BlendMode.color,
                  ),
                  child: Image.asset(
                    "lib/assets/images/background.jpg",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: size.width * 0.3,
                color: Colors.white,
              ),
            ],
          ),
          Positioned(
            right: size.width * 0.2,
            top: size.height * 0.12,
            child: Image.asset(
              "lib/assets/images/nikeShoe.png",
              height: size.height * 0.85,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          ),
          Positioned(
            right: size.width * 0.06,
            top: size.width * 0.2,
            child: Image.asset(
              "lib/assets/images/nikeLogo.png",
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
          Positioned(
            right: size.width * 0.12,
            bottom: size.width * 0.09,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PriceTag(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    color: Colors.deepOrangeAccent,
                    elevation: 12,
                    hoverColor: Colors.redAccent,
                    padding: EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hoverElevation: 28,
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            height: kToolbarHeight,
            width: size.width,
            child: TabBarWidget(size: size),
          ),
          Positioned(
            height: kToolbarHeight + 75,
            width: size.width,
            child: Divider(
              color: Colors.white,
              thickness: 0.5,
            ),
          ),
          Positioned(
            top: size.height * 0.25,
            left: size.width * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "NIKE",
                  style: TextStyle(
                    color: Colors.greenAccent[400],
                    fontSize: 156,
                    letterSpacing: 10,
                    // fontFamily: GoogleFonts.titanOne().fontFamily,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ).shimmer(
                  primaryColor: Colors.greenAccent[400],
                  secondaryColor: Colors.cyanAccent,
                ),
                Text(
                  "JUST DO IT",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 100,
                    letterSpacing: 10,
                    // fontFamily: GoogleFonts.titanOne().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.8,
            right: size.width * 0.32,
            child: Container(
              width: size.width * 0.12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "2020",
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ZOOM",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
