import 'package:flutter/material.dart';
import 'package:flutter_sqlite_todo_list/src/helpers/drawer_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.list),
        ),
        title: Text(
          'Todo-list Sqflite',
        ),
      ),
      body: Container(),
    );
  }
}
