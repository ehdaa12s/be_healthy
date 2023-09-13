import 'package:be_healthy/constant/constant.dart';
import 'package:be_healthy/note_pages/note_screen.dart';
import 'package:be_healthy/pages/check_screen.dart';
import 'package:be_healthy/pages/medical_record.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('الصفحة الرئيسية'),
          backgroundColor: kprimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NoteScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'الملاحظات',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'استشارات طبية',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MedicalRecord(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'السجل الطبي',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
