import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({Key? key, required this.title, required this.icon, required this.description, required this.color}) : super(key: key);
  final String title;
  final Icon icon;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250, width: 200, decoration: BoxDecoration(color: color),
    );
  }
}


// ListView.builder(
//   scrollDirection: Axis.horizontal,
//   itemCount: 3,
//   itemBuilder: (context, index) => ExploreItem(
//       color: Colors.red,
//       icon: Icon(Icons.add),
//       description: "description",
//       title: "Animation"),
// ),