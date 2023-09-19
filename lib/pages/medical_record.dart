import 'package:be_healthy/constant/constant.dart';
import 'package:be_healthy/new%20component/add_medical_record.dart';
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
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('اضافة سجل طبي'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddMedicalRecord(),
                ),
              );
            },
          ),





        ],
      ),
    );
  }
}
