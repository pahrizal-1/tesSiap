import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesbisa/theme/theme.dart';

import '../widget/group_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
              children: [
                Text(
                  'Pilih Kontak',
                  style: contackTextStyle,
                ),
                Text(
                  '14 Kontak',
                  style: contackTextStyle,
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
            ContactCard(
              nameTile: "Udin12",
              nameSecond: "Jangan Chat Besok aja",
              urlImage: 'assets/lisa1.jpg',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "Muhyi",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
              nameTile: "udin",
              nameSecond: "AllhamDulillah",
              urlImage: 'assets/lisa3.png',
            ),
            ContactCard(
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

class ContactCard extends StatelessWidget {
  final String nameTile;
  final String nameSecond;
  final String urlImage;

  const ContactCard({
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
            backgroundColor: primaryColor,
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
              style: TextStyle(fontSize: 15, color: greyColor),
            ),
          ],
        ),
      ],
    );
  }
}
