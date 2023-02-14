// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import '../widget/chat_card.dart';
import 'chat_page.dart';
import 'kontack_page.dart';

class DasbordScreen extends StatelessWidget {
  const DasbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2296f3),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 40),
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/lisa3.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Pahrizal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Junior Web Development',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Friends',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ChatCard(
                      nameTitle: 'Pahrizal',
                      timeTitle: 'Now',
                      secondTitle: 'Siap Keja Boss',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.black,
                    ),
                    const ChatCard(
                      nameTitle: 'Udin 12',
                      timeTitle: '05:01',
                      secondTitle: 'Gass Ngopi',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.black54,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Groups',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatPage(),
                          ),
                        );
                      },
                      child: const ChatCard(
                        nameTitle: 'Grup Facbook',
                        timeTitle: '02:01',
                        secondTitle: 'Siap Keja Boss',
                        iconUrl: 'assets/743397.png',
                        chat: Colors.black54,
                      ),
                    ),
                    const ChatCard(
                      nameTitle: 'Babu Bogor',
                      timeTitle: '02:00',
                      secondTitle: 'gass',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.grey,
                    ),
                    const ChatCard(
                      nameTitle: 'Grup Islam',
                      timeTitle: '02:00',
                      secondTitle: 'gass',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.grey,
                    ),
                    const ChatCard(
                      nameTitle: 'Grup Islam',
                      timeTitle: '02:00',
                      secondTitle: 'gass',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.grey,
                    ),
                    const ChatCard(
                      nameTitle: 'Grup Islam',
                      timeTitle: '02:00',
                      secondTitle: 'gass',
                      iconUrl: 'assets/lisa 1.jpg',
                      chat: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactPage(),
            ),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.chat),
      ),
    );
  }
}
