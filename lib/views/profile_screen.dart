import 'package:flutter/material.dart';
import '../widgets/appbar/custom_appbar.dart';
import '../widgets/user_profile_details.dart'; 

class ProfileScreen extends StatelessWidget {
  final String userName = 'John Doe';
  final String userEmail = 'john.doe@gmail.com';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [ UserProfileDetails(
              userName: userName,
              userEmail: userEmail,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text('My Farms'), 
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {} ,
                  ),
                  ListTile(
                    title: const Text('Crop History'), 
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Sales Records'), 
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Farming Tips'), 
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () { },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Logout'), 
                    trailing: const Icon(Icons.exit_to_app, color: Colors.red),
                    onTap: () {}  
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
