import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
    const UserScreen({super.key});

    @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(
            // appBar: AppBar(
            //   title: const Text('Profile'),
            // ),
            // actions: [
            //   SignedOutAction((context) {
            //     Navigator.of(context).pop();
            //   })
            // ],
            children: [
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(2),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset('flutterfire_300x.png'),
                ),
              ),
            ],
          ),
        ),
      );
    });
    return Container(); // Add a return statement
}
}
