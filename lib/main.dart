import 'dart:io';

import 'package:app_upgrade_flutter_sdk/app_upgrade_flutter_sdk.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppInfo appInfo = AppInfo(
        appName: 'flutter_force_update', // Your app name
        appVersion: '1.0.2', // Your app version
        platform: Platform.operatingSystem, // App Platform, android or ios
        environment:
            'development', // Environment in which app is running, production, staging or development etc.
        appLanguage: 'en' // App language ex: en, es etc. Optional.
        );

    DialogConfig dialogConfig = DialogConfig(
        dialogStyle: DialogStyle.material,
        title: 'App update required!',
        updateButtonTitle: 'Update Now',
        laterButtonTitle: 'Later');

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: AppUpgradeAlert(
            xApiKey: 'NWY3MjkzZjgtOWRiMi00Y2ZjLThjN2EtNjkzZjk3MTc5ZjE5',
            appInfo: appInfo,
            dialogConfig: dialogConfig,
            child: const Center(child: Text('Flutter Demo Home Page'))),
      ),
    );
  }
}
