import 'package:flutter/material.dart';
import 'package:testapp/login/login.dart';
import 'package:testapp/topics/topics.dart';
import 'package:testapp/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return StreamBuilder(
      stream: AuthService().userStream,
      builder:  (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return const Text('loading');
        }else if (snapshot.hasError) {
          return  Center(
            child: Text('error',
            style: Theme.of(context).textTheme.button,
            ) ,
            );
        }else if (snapshot.hasData) {
          return const TopicsScreen();
        }else{
          return const LoginScreen();
        }
      },
     );
  }
  
}