import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/core/ui_components/info_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = mediaQueryData.size.height;
    double screenWidth = mediaQueryData.size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          color: Colors.orangeAccent,
          width: screenWidth / 2,
          height: screenHeight / 2,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return Center(
                child: Container(
                color: Colors.blueGrey,
                width: screenWidth /4,
                height: screenHeight /4,
              
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
