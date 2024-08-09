import 'package:flutter/material.dart';
import 'package:pin_code_biometric_auth/ui/screens/pin_code_screen.dart';

class PinCodeBioAuth extends StatelessWidget {
  const PinCodeBioAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          centerTitle: true,
        )
      ),
      home: const PinCodeScreen(),
    );
  }
}
