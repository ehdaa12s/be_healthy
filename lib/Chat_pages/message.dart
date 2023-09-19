import 'package:be_healthy/constant/constant.dart';

class Messages {
  final String text;
  final String? email ;



  Messages({required this.text, required this.email,});
  factory Messages.fromJson(json) {
    return Messages(
      text: json[kmessagesText],
      email: json[kemail],


    );
  }
}
