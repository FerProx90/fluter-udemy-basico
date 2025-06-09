import 'package:flutter/material.dart';
import 'package:hello_wordl/config/helpers/get_yes_no_answer.dart';
import 'package:hello_wordl/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: "I'm the Undertaker", fromWho: FromWho.him),
    Message(text: "es el enterrador?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')){
      await hisReply();
    }

    notifyListeners(); // para notificar a los que escuchan en el provider y recarguen sus widgets
    moveScrollToBottom();
  }

  Future<void> hisReply() async {
    final hisMessage = await getYesNoAnswer.getAnswer();
    messageList.add(hisMessage);
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent, // Posicion
      duration: const Duration(milliseconds: 300), // duracion de animacion
      curve: Curves.easeOut, // tipo de animacion
    );
  }
}
