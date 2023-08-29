import 'package:crud/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget{
    final User user;
    const UserTile(this.user, {super.key});
  @override
  Widget build(BuildContext context){
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
      ? CircleAvatar(child: Icon(Icons.person))
      : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
    );
  }
}