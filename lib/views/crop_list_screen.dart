import 'package:flutter/material.dart';
import '../widgets/appbar/custom_appbar.dart';
import '../widgets/buttons/custom.fab.dart';
import '../widgets/crop_item.dart';

class CropsScreen extends StatelessWidget {
  const CropsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Crops'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search crops...',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  CropItem(
                    title: 'Wheat',
                    content: '50 acres - Healthy',
                    arrowColor: Colors.green,
                    icon:
                        Icon(Icons.arrow_outward_outlined, color: Colors.green),
                  ),
                  CropItem(
                    title: 'Corn',
                    content: '30 acres - Good',
                    arrowColor: Colors.yellow,
                    icon: Icon(Icons.arrow_forward, color: Colors.yellow),
                  ),
                  CropItem(
                    title: 'Soybeans',
                    content: '20 acres - Needs attention',
                    arrowColor: Colors.red,
                    icon:
                        Icon(Icons.arrow_downward_outlined, color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFAB(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
