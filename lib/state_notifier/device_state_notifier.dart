import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants.dart';
import '../models/device_service.dart';

final deviceServiceProvider =
    StateNotifierProvider<DeviceServiceNotifier, List<DeviceService>>((ref) {
  return DeviceServiceNotifier();
});

class DeviceServiceNotifier extends StateNotifier<List<DeviceService>> {
  DeviceServiceNotifier() : super([]);

  void addDeviceService(DeviceService service) {
    state = [...state, service];
  }

  Future<void> loadDeviceServices() async {
    final jsonData = MockDeviceService().deviceServiceJson as Map<String, dynamic>;
    final deviceServices = (jsonData['deviceServices'] as List)
        .map((item) => DeviceService.fromJson(item))
        .toList();

    for (var service in deviceServices) {
      await Future(() {
        addDeviceService(service);
      });
      await Future.delayed(const Duration(seconds: 2));
    }
  }
}
