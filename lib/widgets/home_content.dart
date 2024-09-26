// widgets/home_content.dart
import 'package:flutter/material.dart';
import 'appbar/custom_appbar.dart';
import 'cards/market_card.dart';
import 'cards/custom_card.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeCustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back, John",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                    bottom: 25, top: 10, right: 20, left: 20),
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F6E9),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Weather",
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23°C",
                          style: TextStyle(   fontSize: 34.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width:  7), 
                        Padding(
                          padding: EdgeInsets.only(  top: 20), 
                          child: Text(
                            "Partly Cloudy",
                            style: TextStyle(fontSize: 15.5, color: Colors.grey),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Two cards in the same row
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomCard(
                      title: "Crop Health",
                      content: "Good",
                      contentColor: Colors.green,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomCard(
                      title: "Tasks",
                      content: "5",
                      additionalContent: "Pending",
                      contentColor: Colors.orange,
                    ),
                  ),
                ],
              ),
              // Market Card
              const MarketCard(),
            ],
          ),
        ),
      ),
    );
  }
}
