import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 24,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Air Max Zoom",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "800",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.black),
                ),
                Text(
                  "₹7499",
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 15,
                  width: 15,
                  color: Colors.yellow,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 15,
                  width: 15,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 15,
                  width: 15,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 15,
                  width: 15,
                  color: Colors.indigo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
