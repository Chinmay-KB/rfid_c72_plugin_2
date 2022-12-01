
import 'rfid_scanner_c72_plugin_platform_interface.dart';

class RfidScannerC72Plugin {
  Future<String?> getPlatformVersion() {
    return RfidScannerC72PluginPlatform.instance.getPlatformVersion();
  }
}
