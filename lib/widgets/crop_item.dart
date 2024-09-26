import 'package:flutter/material.dart';

class CropItem extends StatelessWidget {
  final String title;
  final String content;
  final Color arrowColor;
  final Icon icon; 

  const CropItem({
    super.key,
    required this.title,
    required this.content,
    required this.arrowColor,
    required this.icon, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: arrowColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: icon, 
          ),
        ],
      ),
    );
  }
}
