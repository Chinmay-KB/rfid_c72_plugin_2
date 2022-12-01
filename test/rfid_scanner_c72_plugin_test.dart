import 'package:flutter_test/flutter_test.dart';
import 'package:rfid_scanner_c72_plugin/rfid_scanner_c72_plugin.dart';
import 'package:rfid_scanner_c72_plugin/rfid_scanner_c72_plugin_platform_interface.dart';
import 'package:rfid_scanner_c72_plugin/rfid_scanner_c72_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRfidScannerC72PluginPlatform
    with MockPlatformInterfaceMixin
    implements RfidScannerC72PluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RfidScannerC72PluginPlatform initialPlatform = RfidScannerC72PluginPlatform.instance;

  test('$MethodChannelRfidScannerC72Plugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRfidScannerC72Plugin>());
  });

  test('getPlatformVersion', () async {
    RfidScannerC72Plugin rfidScannerC72Plugin = RfidScannerC72Plugin();
    MockRfidScannerC72PluginPlatform fakePlatform = MockRfidScannerC72PluginPlatform();
    RfidScannerC72PluginPlatform.instance = fakePlatform;

    expect(await rfidScannerC72Plugin.getPlatformVersion(), '42');
  });
}
