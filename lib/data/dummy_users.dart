import 'package:crud/models/user.dart';

const DUMMY_USERS = {
  '1': User(
    id: '1',
    name: 'Hermione',
    email: 'granger@gmail.com',
    avatarUrl: 'https://harrypotter.fandom.com/pt-br/wiki/Hermione_Granger',
  ),
  '2': User(
    id: '2',  // Corrigido o ID para ser único
    name: 'Tony',
    email: 'tonynho@gmail.com',
    avatarUrl: 'https://pt.wikipedia.org/wiki/Tony_Stark_%28Universo_Cinematogr%C3%A1fico_Marvel%29',
  ),
};
