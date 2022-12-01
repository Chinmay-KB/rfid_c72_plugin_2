import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rfid_scanner_c72_plugin_platform_interface.dart';

/// An implementation of [RfidScannerC72PluginPlatform] that uses method channels.
class MethodChannelRfidScannerC72Plugin extends RfidScannerC72PluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rfid_scanner_c72_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
