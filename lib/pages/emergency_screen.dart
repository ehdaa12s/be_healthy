import 'package:be_healthy/constant/constant.dart';

import 'package:flutter/material.dart';

import '../new component/make_phone_call.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({super.key});

  @override
  State<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  final TextEditingController numberController = TextEditingController();
  String number = '123';

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
            title: const Text('hospital number'),
            subtitle: const Text('Call the emergency number'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('اتصال'),
                    content: const Text('هل تريد الاتصال بالطوارئ'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('لا'),
                      ),
                      TextButton(
                        onPressed: () {
                          dialNumber(phoneNumber: '123');
                          Navigator.pop(context);
                        },
                        child: const Text('نعم'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add'),
            subtitle: const Text('Add the emergency number'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('اضافة رقم الطوارئ'),
                    content: TextField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'ادخل رقم الطوارئ',
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('الغاء'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            number = numberController.text;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('اضافة'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Emergency Number'),
            subtitle: Text(number),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('رقم الطوارئ'),
                    content: Text(number),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('الغاء'),
                      ),
                      TextButton(
                        onPressed: () {
                          dialNumber(phoneNumber: number);
                        },
                        child: const Text('اتصال'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
