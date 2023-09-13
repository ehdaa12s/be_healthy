import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    Key? key,
    required this.doctorName,
    required this.doctorPhoneNumber,
    required this.doctorImage,
  }) : super(key: key);

  final String doctorName;
  final String doctorPhoneNumber;
  final String doctorImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(doctorImage),
      ),
      title: Text(doctorName),
      subtitle: Text(doctorPhoneNumber),
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
                    Navigator.pop(context);
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
