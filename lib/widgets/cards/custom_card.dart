import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String content;
  final String? additionalContent; 
  final Color contentColor; 

  const CustomCard({
    super.key,
    required this.title,
    required this.content,
    this.additionalContent, 
    this.contentColor = Colors.black, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 30, right: 20, left: 20),
        decoration: BoxDecoration(
          color: Colors.transparent, 
          border: Border.all(color: Colors.grey.shade400), 
          borderRadius: BorderRadius.circular(20.0), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: contentColor,
                    fontWeight: FontWeight.bold,
                  ), // Use the content color
                ),
                if (additionalContent != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                    child: Text(
                      additionalContent!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
