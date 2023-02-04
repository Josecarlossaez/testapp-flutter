import 'package:flutter/material.dart';
import 'package:testapp/services/auth.dart';

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen') ,
        ),
        body: ElevatedButton(
          child: Text('signout'),
          onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context).pushAndRemoveUntil('/' as Route<Object?>, (route) => false);
          },
        ),
     
    );
  }

}