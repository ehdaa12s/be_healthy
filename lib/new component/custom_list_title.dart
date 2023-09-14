import 'package:be_healthy/new%20component/make_phone_call.dart';
import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    Key? key,
    required this.doctorName,
    required this.doctorPhoneNumber,
    required this.doctorImage,
    required this.timeAvailable,
  }) : super(key: key);

  final String doctorName;
  final String doctorPhoneNumber;
  final String doctorImage;
  final String timeAvailable;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(doctorImage),
      ),
      title: Text.rich(
        TextSpan(
          text: doctorName,
          children: [
            TextSpan(
              text: '\n$doctorPhoneNumber',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      subtitle: Text(
        timeAvailable,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('اتصال'),
              content: Text('هل تريد الاتصال بالدكتور $doctorName'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('لا'),
                ),
                TextButton(
                  onPressed: () {
                    dialNumber(
                      phoneNumber: doctorPhoneNumber,

                    );
                  },
                  child: const Text('نعم'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
