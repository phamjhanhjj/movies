import 'package:flutter/material.dart';
import 'package:movies/home_page.dart';
import 'auth_gate.dart';

class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: const AuthGate(),
   );
 }
}