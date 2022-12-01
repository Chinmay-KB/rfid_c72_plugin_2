import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rfid_scanner_c72_plugin_method_channel.dart';

abstract class RfidScannerC72PluginPlatform extends PlatformInterface {
  /// Constructs a RfidScannerC72PluginPlatform.
  RfidScannerC72PluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static RfidScannerC72PluginPlatform _instance = MethodChannelRfidScannerC72Plugin();

  /// The default instance of [RfidScannerC72PluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelRfidScannerC72Plugin].
  static RfidScannerC72PluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RfidScannerC72PluginPlatform] when
  /// they register themselves.
  static set instance(RfidScannerC72PluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
