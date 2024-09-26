// widgets/market_card.dart
import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity, 
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 10.0), 
        decoration: BoxDecoration(
          color: Colors.transparent, 
          borderRadius: BorderRadius.circular(20.0), 
          border: Border.all(color: Colors.grey.shade400), 
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Market Price",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wheat",
                  style: TextStyle(fontSize: 16.0,color: Colors.grey),
                ),
                Text(
                  "\$280/ton",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Corn",
                  style: TextStyle(fontSize: 16.0,color: Colors.grey),
                ),
                Text(
                  "\$175/ton",
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
