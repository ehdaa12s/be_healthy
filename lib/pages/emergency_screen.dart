import 'package:_BeHealthey/constant/constant.dart';

import 'package:flutter/material.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimaryColor,
        title: const Text('الطوارئ'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text('Call'),
            subtitle: const Text('Call the emergency number'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
