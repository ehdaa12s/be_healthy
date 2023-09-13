import 'package:be_healthy/constant/constant.dart';
import 'package:flutter/material.dart';

class MedicalRecord extends StatelessWidget {
  const MedicalRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السجل الطبي'),
        backgroundColor: kprimaryColor,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kprimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
