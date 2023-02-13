import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String nameTitle;
  final String secondTitle;
  final String iconUrl;
  final String timeTitle;
  final Color chat;
  const ChatCard({
    Key? key,
    required this.nameTitle,
    required this.secondTitle,
    required this.iconUrl,
    required this.timeTitle,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffE8E8E8),
            radius: 30,
            backgroundImage: AssetImage(iconUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  nameTitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  secondTitle,
                  style: TextStyle(
                      color: chat, fontWeight: FontWeight.w500, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            timeTitle,
            style: TextStyle(
                color: const Color(0xffA0A0A0), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
