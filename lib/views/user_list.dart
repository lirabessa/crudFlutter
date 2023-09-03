import 'package:crud/components/user_tile.dart';
import 'package:crud/data/dummy_users.dart';
import 'package:flutter/material.dart';

// class UserList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     final users = {...DUMMY_USERS};

//     return Scaffold(
//         appBar: AppBar(
//           title: const Text ('Lista de Usuariio'),
//           actions: <Widget>[
//             IconButton(onPressed: () {}, icon: Icon(Icons.add)
//             )
//           ],
//         ),
//         body: ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (ctx, i) => UserTile((users.values.elementAt(i))),
//         )
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuário',
            style: TextStyle(
              color: Colors.white, // Cor do texto dentro da AppBar
              fontSize: 20, // Tamanho do texto da AppBar
            ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 100, 4), // Cor de fundo da AppBar
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ),

        // Parte de baixo
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 255, 109, 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
