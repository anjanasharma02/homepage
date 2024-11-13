import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class User {
  int? userid;
  int? id;
  String? title;
  String? body;
  User(this.userid, this.id, this.body, this.title);
}
