import 'package:_BeHealthey/Chat_pages/message.dart';
import 'package:_BeHealthey/constant/constant.dart';
import 'package:_BeHealthey/new%20component/chat_bubles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({
    super.key,
  });
  static String id = "Chat_Screen";
  final _controller = ScrollController();

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController messageController = TextEditingController();

  CollectionReference messages =
      FirebaseFirestore.instance.collection(kmessagesCollection);

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        stream: messages.orderBy(kcreatedAt, descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Messages> messageslist = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messageslist.add(Messages.fromJson(snapshot.data!.docs[i]));
            }
            return Scaffold(
              appBar: AppBar(
                backgroundColor: kprimaryColor,
                title: const Text("Chat Screen"),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      controller: widget._controller,
                      itemCount: messageslist.length,
                      itemBuilder: (context, index) {
                        return messageslist[index].email == email
                            ? ChatBubble(
                                messages: messageslist[index],
                              )
                            : ChatBubbleforFriend(
                                messages: messageslist[index],
                              );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    height: 70,
                    color: Colors.white,
                    child: Row(
                      children: [
                        //add image from gallery
                        IconButton(
                            icon: const Icon(
                              Icons.photo,
                              color: kprimaryColor,
                            ),
                            onPressed: () {
                              //add image from gallery
                            }),

                        Expanded(
                          child: TextField(
                            controller: messageController,
                            onSubmitted: (value) {
                              messages.add({
                                kmessagesText: value,
                                kcreatedAt: DateTime.now(),
                                kemail: email,
                              });
                              messageController.clear();

                              widget._controller.animateTo(
                                widget._controller.position.minScrollExtent,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              );
                            },
                            decoration: const InputDecoration.collapsed(
                              hintText: "Send a message...",
                            ),
                          ),
                        ),
                        IconButton(
                            icon: const Icon(
                              Icons.send,
                              color: kprimaryColor,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
