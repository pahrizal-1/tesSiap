import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/group_card.dart';

class ContackPage extends StatelessWidget {
  const ContackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          centerTitle: false,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 29,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Pilih Kontak'),
                Text(
                  '14 Kontak',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(
                CupertinoIcons.search,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 25,
              ),
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            GrupCard(
              titleName: 'Grub baru',
              iconLeft: Icons.group,
            ),
            GrupCard(
              titleName: "Kontak Baru",
              iconLeft: Icons.plus_one,
              urlIcon: Icons.qr_code,
            ),
            ContackCard(
              nameTile: "Udin12",
              nameSecond: "Jangan Chat Besok aja",
              urlImage: 'assets/lisa1.jpg',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "udin",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContackCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
          ],
        ),
      ),
    );
  }
}

class ContackCard extends StatelessWidget {
  final String nameTile;
  final String nameSecond;
  final String urlImage;

  const ContackCard({
    Key? key,
    required this.nameTile,
    required this.nameSecond,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 27,
            backgroundImage: AssetImage(urlImage),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nameTile,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              nameSecond,
              style: const TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
