class Users {
  final int? id;
  final String username;
  final String password;
  final String phoneNumber;

  const Users(
      {this.id,
      required this.username,
      required this.password,
      required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'username': 'username',
      'password': 'password',
      'phoneNumber': 'phoneNumber'
    };
  }
}
