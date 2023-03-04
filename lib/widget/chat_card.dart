import 'package:flutter/material.dart';
import 'package:tesbisa/theme/theme.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xffE8E8E8),
          radius: 25,
          backgroundImage: AssetImage(iconUrl),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        const Spacer(),
        Text(
          timeTitle,
          style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
