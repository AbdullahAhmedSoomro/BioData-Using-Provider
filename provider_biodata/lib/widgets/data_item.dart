import 'package:flutter/material.dart';

class DataItem extends StatelessWidget {
  String pername;
  int perage;
  int perphone;
  String peremail;
  DataItem({
    required this.pername,
    required this.perage,
    required this.perphone,
    required this.peremail,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("$perage"),
      title: Text(pername),
      subtitle: Text(peremail),
      trailing: Text("$perphone"),
    );
  }
}
