import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final Size size;

  TabBarWidget({this.size});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "lib/assets/images/nikeLogo.png",
                  width: 100,
                  color: Colors.white,
                ),
                Text(
                  "New Arrivals",
                ),
                Text(
                  "Men",
                ),
                Text(
                  "Women",
                ),
                Text(
                  "Boys",
                ),
                Text(
                  "Girls",
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[800],
                  size: 36,
                ),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.grey[800],
                  size: 36,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
