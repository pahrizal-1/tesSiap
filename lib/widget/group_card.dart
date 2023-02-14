import 'package:flutter/material.dart';

class GrupCard extends StatelessWidget {
  final IconData? urlIcon;
  final String titleName;
  final IconData iconLeft;
  const GrupCard({
    Key? key,
    this.urlIcon,
    required this.titleName,
    required this.iconLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 27,
              child: Icon(
                iconLeft,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            titleName,
            style: const TextStyle(fontSize: 25),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              urlIcon,
              color: Colors.blue,
            ),
          )
        ],
      ),
    ]);
  }
}
