import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widget/chat_room.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          centerTitle: false,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 29,
              ),
            ),
          ),

          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  backgroundImage: AssetImage('assets/743397.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Grup Facabok',
                      style: TextStyle(fontSize: 25),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      '10,123 Members',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(
                Icons.call,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: const [
            Chat(
              chatTitle: 'Halo Apa Kabar Teman',
              nameTitle: 'Udin Teman',
              urlImg: 'assets/lisa 1.jpg',
              clockTitle: '20:20',
            ),
            ChatUser(
              chatTitle: 'Baik sekali,',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: '20:20',
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'gw baik,lu gimana ? gw harap\n kalian sehat semua',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
            Chat(
              nameTitle: 'Umi',
              chatTitle: 'baik kak',
              urlImg: 'assets/lisa1.jpg',
              clockTitle: "20:20",
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 90,
        color: Colors.grey,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 230,
                    child: TextFormField(
                      style: TextStyle(
                        fontSize: 19,
                      ),
                      decoration: InputDecoration(
                          hintText: "Mesege..", border: InputBorder.none),
                    ),
                  ),
                  Icon(
                    Icons.attachment,
                    color: Colors.black38,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xffe9eef2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.arrow_right,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
