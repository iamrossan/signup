import '../models/userModels.dart';
import '../utilities/databaseHelper.dart';

class SignUpUser {
  var users = <Users>[];

  final DatabaseHelper databaseHelper = DatabaseHelper();
  getUsers() async {
    users = await databaseHelper.getUser();
    return users;
  }
}
