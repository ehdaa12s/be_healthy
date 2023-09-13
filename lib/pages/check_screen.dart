import 'package:be_healthy/constant/constant.dart';
import 'package:be_healthy/new%20component/custom_list_title.dart';
import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('استشر طبيب'),
          backgroundColor: kprimaryColor,
        ),
        body: ListView(
          children: const [
            CustomListTitle(
              doctorName: 'Dr/ Ahmed',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqmfcbJXhnYd9S9rD-zMNDxUrsqsmMvQJTmA&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / Mohamed kamal',
              doctorPhoneNumber: '01235356677',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqmfcbJXhnYd9S9rD-zMNDxUrsqsmMvQJTmA&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / marwa mohamed',
              doctorPhoneNumber: '01123456789',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKKERn-lpNg8Hxjf3ftsj_zpGwK8ruBp5y9g&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / mohamed ali',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqmfcbJXhnYd9S9rD-zMNDxUrsqsmMvQJTmA&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / Ahmed ali',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqmfcbJXhnYd9S9rD-zMNDxUrsqsmMvQJTmA&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / Samir moha',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKKERn-lpNg8Hxjf3ftsj_zpGwK8ruBp5y9g&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr /  ali Ahmed',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqmfcbJXhnYd9S9rD-zMNDxUrsqsmMvQJTmA&usqp=CAU',
            ),
            CustomListTitle(
              doctorName: 'Dr / Amaira Abdullah',
              doctorPhoneNumber: '01005678998',
              doctorImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKKERn-lpNg8Hxjf3ftsj_zpGwK8ruBp5y9g&usqp=CAU',
            ),
          ],
        ));
  }
}
