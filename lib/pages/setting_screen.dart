import 'package:_BeHealthey/constant/constant.dart';
import 'package:_BeHealthey/new%20component/app_theme.dart';
import 'package:_BeHealthey/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  //  bool _isDark = false;

  String _isselectedLanguage = 'English';
  final List<String> _languages = ['English', 'Arabic', 'French', 'Spanish'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kprimaryColor,
          title: const Text('الاعدادات'),
        ),
        body: Consumer<AppTheme>(builder: (context, appTheme, _) {
          return ListView(
            children: [
              ListTile(
                title: const Text('الوضع الليلي'),
                trailing: Switch(
                  value: appTheme.isDarkModeEnabled,
                  onChanged: (value) {
                    appTheme.toggleDarkMode(value);
                  },
                ),
              ),

              ListTile(
                title: const Text('اللغة'),
                trailing: DropdownButton(
                  value: _isselectedLanguage,
                  onChanged: (value) {
                    setState(() {
                      _isselectedLanguage = value.toString();
                    });
                  },
                  items: _languages.map((e) {
                    return DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    );
                  }).toList(),
                ),
              ),
              //logout
              ListTile(
                title: const Text('تسجيل الخروج'),
                trailing: IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }));
  }
}
