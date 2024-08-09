import 'package:flutter/material.dart';
import 'package:pin_code_biometric_auth/core/utils/app_constants.dart';
import 'package:pin_code_biometric_auth/logic/services/local_auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  AppConstants.userPassword = sharedPreferences.getInt('password');

  AppConstants.isBiometricsAvailable = await LocalAuthService.checkBiometrics();

  runApp(const PinCodeBioAuth());
}
