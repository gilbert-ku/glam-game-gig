// lib/services/smart_mirror_service.dart

import 'package:flutter/services.dart';

class SmartMirrorService {
  static const platform = MethodChannel('com.yourcompany.smartmirror');

  Future<void> sendMirrorCommand(String command) async {
    try {
      await platform.invokeMethod('sendCommand', {'command': command});
    } on PlatformException catch (e) {
      print("Failed to send command: '${e.message}'.");
    }
  }
}
