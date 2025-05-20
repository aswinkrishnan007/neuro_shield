class DeviceService {
  final String serviceName;
  final String accessStatus;
  final DateTime? lastAccessed;
  final List<String> accessedBy;

  DeviceService({
    required this.serviceName,
    required this.accessStatus,
    this.lastAccessed,
    required this.accessedBy,
  });

  factory DeviceService.fromJson(Map<String, dynamic> json) {
    return DeviceService(
      serviceName: json['serviceName'],
      accessStatus: json['accessStatus'],
      lastAccessed: json['lastAccessed'] != null ? DateTime.parse(json['lastAccessed']) : null,
      accessedBy: List<String>.from(json['accessedBy']),
    );
  }
}
