import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  final String nameTitle;
  final String chatTitle;
  final String urlImg;
  final String clockTitle;

  const Chat({
    Key? key,
    required this.nameTitle,
    required this.chatTitle,
    required this.urlImg,
    required this.clockTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(urlImg),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            // ignore: prefer_const_constructors
            borderRadius: BorderRadius.only(
                topRight: const Radius.circular(12),
                bottomRight: const Radius.circular(12),
                bottomLeft: const Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameTitle,
                style: const TextStyle(fontSize: 16, color: Colors.blue),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                chatTitle,
                style: const TextStyle(fontSize: 19, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                clockTitle,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class ChatUser extends StatelessWidget {
  final String chatTitle;
  final String urlImg;
  final String clockTitle;
  const ChatUser({
    Key? key,
    required this.chatTitle,
    required this.urlImg,
    required this.clockTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: const BoxDecoration(
            color: Color(0xff69F0AE),
            // ignore: prefer_const_constructors
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatTitle,
                style: TextStyle(fontSize: 19, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                clockTitle,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(urlImg),
          ),
        ),
      ],
    );
  }
}
