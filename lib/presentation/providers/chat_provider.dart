import 'package:flutter/material.dart';
import 'package:hello_wordl/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "I'm the Undertaker", fromWho: FromWho.him),
    Message(text: "es el enterrador?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners(); // para notificar a los que escuchan en el provider y recarguen sus widgets
  }
}