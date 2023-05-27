import 'package:flutter/widgets.dart';
import 'package:tesbisa/model/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> _message = [];
  // final List<Message> _message = [
  //   Message(
  //     message: "HI",
  //     senderUsername: "Muhyi",
  //     sentAt: DateTime.parse("2022-02-02 23:08:00"),
  //   ),
  //   Message(
  //     message: "HALLo",
  //     senderUsername: "Ijal",
  //     sentAt: DateTime.parse("2022-02-02 23:09:00"),
  //   ),
  //   Message(
  //     message: "Rek jadi moal?",
  //     senderUsername: "Muhyi",
  //     sentAt: DateTime.parse("2022-02-02 23:11:00"),
  //   )
  // ];

  List<Message> get messages => _message;
  addNewMessage(Message message) {
    _message.add(message);
    notifyListeners();
  }
}
