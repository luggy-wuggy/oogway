import 'package:flutter/material.dart';
import 'dart:ui' as ui;

/// Detects the padding of the platform device. ie, notches on iPhones and Androids
abstract class OogwayDevicePadding {
  static final top = MediaQueryData.fromWindow(ui.window).padding.top;
  static final bottom = MediaQueryData.fromWindow(ui.window).padding.bottom;
}
