import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static Future<void> getDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if(Platform.isAndroid) { //checking android platform
      AndroidDeviceInfo deviceInfo = (await deviceInfoPlugin.androidInfo);
      print(deviceInfo.toMap());
    }else if(Platform.isIOS){ //checking ios platform
      IosDeviceInfo deviceInfo = (await deviceInfoPlugin.iosInfo);
      print(deviceInfo.toMap());
    }
  }
  @override
  void initState() {
    getDeviceInfo(); //calling getDeviceInfo method in init method
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
