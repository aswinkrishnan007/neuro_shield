import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../state_notifier/device_state_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(deviceServiceProvider.notifier).loadDeviceServices();
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceServices = ref.watch(deviceServiceProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (deviceServices.isNotEmpty) {
        if (deviceServices[deviceServices.length - 1].accessStatus == 'Denied') {
          var snackBar = SnackBar(
              backgroundColor:Colors.red,
              content: Text(
                  '${deviceServices[deviceServices.length - 1].serviceName} access denied.'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      }
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AI Based Network Intrusion Detection System',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: deviceServices.length,
        padding: const EdgeInsets.all(5),
        itemBuilder: (context, index) {
          final service = deviceServices[index];
          return Card(
            color: service.accessStatus == 'Denied' ? Colors.red.shade50 : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        service.serviceName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: service.accessStatus == 'Denied' ? Colors.red : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      if (service.accessStatus == 'Denied')
                        const Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Access Status: ${service.accessStatus}',
                  ),
                  if (service.lastAccessed != null)
                    Text(
                      'Last Accessed: ${service.lastAccessed}',
                    ),
                  Text(
                    'Accessed By: ${service.accessedBy.join(', ')}',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
