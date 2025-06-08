import 'package:flutter/material.dart';
import 'package:hello_wordl/presentation/widgets/chat/my_messages_bubble.dart';
import 'package:hello_wordl/presentation/widgets/chat/his_messages_bubble.dart';
import 'package:hello_wordl/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://static.wikia.nocookie.net/hunger_games_simulator/images/d/d6/Theundertaker.png/revision/latest?cb=20210205100715",
            ),
          ),
        ),
        title: const Text("Taker"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ), // -> Pading de los lados
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? const HisMessagesBubble()
                      : const MyMessagesBubble();
                },
              ),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
