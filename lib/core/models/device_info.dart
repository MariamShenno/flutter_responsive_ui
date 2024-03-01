import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_ui/core/enums/device_type.dart';

class DeviceInformation {
  final Orientation orientation;
  final DeviceType deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;

  DeviceInformation(
      {required this.orientation,
      required this.deviceType,
      required this.screenWidth,
      required this.screenHeight,
      required this.localWidth,
      required this.localHeight});
}
