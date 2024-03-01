import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/core/functions/get_device_type.dart';
import 'package:flutter_responsive_ui/core/models/device_info.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, DeviceInformation deviceInfo)
      builder;
  const InfoWidget({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = DeviceInformation(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenHeight: mediaQueryData.size.height,
          screenWidth: mediaQueryData.size.width,
          localHeight: constraints.maxHeight,
          localWidth: constraints.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}
