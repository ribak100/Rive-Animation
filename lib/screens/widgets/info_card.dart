import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key, required this.name, required this.profession,
  }) : super(key: key);

  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return  ListTile(leading: const CircleAvatar(
      backgroundColor: Colors.white38,
      child: Icon(Icons.person, color: Colors.white,),
    ),
      title: Text(name, style: const TextStyle(color: Colors.white, fontSize: 18),),
      subtitle: Text(profession, style: const TextStyle(color: Colors.white54, fontSize: 16)),
    );
  }
}
