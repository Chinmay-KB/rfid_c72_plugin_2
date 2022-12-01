import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rfid_scanner_c72_plugin/rfid_scanner_c72_plugin_method_channel.dart';

void main() {
  MethodChannelRfidScannerC72Plugin platform = MethodChannelRfidScannerC72Plugin();
  const MethodChannel channel = MethodChannel('rfid_scanner_c72_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
