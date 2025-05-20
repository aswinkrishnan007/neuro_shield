import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/device_service.dart';

class MockDeviceService {
  var deviceServiceJson = {
    "deviceServices": [
      {
        "serviceName": "Location",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-19T14:30:00Z",
        "accessedBy": ["Maps", "Weather App"]
      },
      {
        "serviceName": "Camera",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-18T10:00:00Z",
        "accessedBy": ["Instagram", "Scanner App"]
      },
      {
        "serviceName": "Microphone",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-18T09:15:00Z",
        "accessedBy": ["Voice Recorder", "Zoom"]
      },
      {
        "serviceName": "Contacts",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-17T11:00:00Z",
        "accessedBy": ["WhatsApp", "Email App"]
      },
      {
        "serviceName": "Storage",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T08:45:00Z",
        "accessedBy": ["File Manager", "Photo Editor"]
      },
      {"serviceName": "SMS", "accessStatus": "Denied", "lastAccessed": null, "accessedBy": []},
      {
        "serviceName": "Phone",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-16T13:20:00Z",
        "accessedBy": ["Dialer", "Caller ID App"]
      },
      {
        "serviceName": "Calendar",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-15T09:00:00Z",
        "accessedBy": ["Google Calendar", "Meeting Scheduler"]
      },
      {
        "serviceName": "Call Logs",
        "accessStatus": "Denied",
        "lastAccessed": null,
        "accessedBy": []
      },
      {
        "serviceName": "Bluetooth",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T07:30:00Z",
        "accessedBy": ["Bluetooth Headset", "File Transfer App"]
      },
      {
        "serviceName": "Wi-Fi",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T06:00:00Z",
        "accessedBy": ["System", "Streaming App"]
      },
      {"serviceName": "NFC", "accessStatus": "Denied", "lastAccessed": null, "accessedBy": []},
      {
        "serviceName": "Sensors",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-19T12:00:00Z",
        "accessedBy": ["Fitness Tracker", "Compass App"]
      },
      {
        "serviceName": "Clipboard",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-19T15:00:00Z",
        "accessedBy": ["Keyboard App", "Notes App"]
      },
      {
        "serviceName": "Notifications",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T08:00:00Z",
        "accessedBy": ["Messaging App", "News App"]
      },
      {
        "serviceName": "Background Data",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T09:00:00Z",
        "accessedBy": ["Email App", "Cloud Sync"]
      },
      {
        "serviceName": "Usage Access",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-19T18:00:00Z",
        "accessedBy": ["Digital Wellbeing", "App Monitor"]
      },
      {
        "serviceName": "Accessibility",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-18T17:00:00Z",
        "accessedBy": ["Screen Reader", "Magnifier"]
      },
      {
        "serviceName": "Device Admin",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-17T10:00:00Z",
        "accessedBy": ["Security App"]
      },
      {
        "serviceName": "VPN",
        "accessStatus": "Granted",
        "lastAccessed": "2025-05-20T05:30:00Z",
        "accessedBy": ["VPN Client"]
      }
    ]
  };
}
