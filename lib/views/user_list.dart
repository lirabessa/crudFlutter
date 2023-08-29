import 'package:crud/components/user_tile.dart';
import 'package:crud/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final users = {...DUMMY_USERS};

    return Scaffold(
        appBar: AppBar(
          title: const Text ('Lista de Usuario'),
        ),
        body: ListView.builder(
          itemCount: users.length,
          // itemBuilder: ((ctx, i) => Text(users.values.elementAt(i).name)), //nome das pessoas
          itemBuilder: (ctx, i) => UserTile((users.values.elementAt(i))),
        )
    );
  }
}