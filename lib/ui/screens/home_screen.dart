import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_biometric_auth/ui/screens/pin_code_screen.dart';
import 'package:pin_code_biometric_auth/ui/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen._();

  static Route<void> route() => CupertinoPageRoute(
        builder: (_) => const HomeScreen._(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, PinCodeScreen.route());
        }, icon: const Icon(Icons.logout)),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(context, SettingsScreen.route()),
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: const Center(
        child: FlutterLogo(size: 250, style: FlutterLogoStyle.horizontal),
      ),
    );
  }
}
