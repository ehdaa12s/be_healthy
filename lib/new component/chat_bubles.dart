import 'package:be_healthy/chat_pages/message.dart';
import 'package:be_healthy/constant/constant.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.messages,
  });
  final Messages messages;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
          padding:
              const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
            color: kprimaryColor,
          ),
          child: Text(
            messages.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
    );
  }
}

class ChatBubbleforFriend extends StatelessWidget {
  const ChatBubbleforFriend({
    super.key,
    required this.messages,
  });
  final Messages messages;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          padding:
              const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 16),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
              bottomLeft: Radius.circular(32),
            ),
            color: Color(0xFF006D84),
          ),
          child: Text(
            messages.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )),
    );
  }
}
