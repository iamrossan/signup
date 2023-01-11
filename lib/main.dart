import 'package:flutter/material.dart';
import 'package:sign_up/sign.dart';

main() {
  runApp(MaterialApp(
    home: SignUpPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameTxt = TextEditingController();
  final TextEditingController passwordTxt = TextEditingController();
  final TextEditingController phoneNumberTxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 180.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150.0),
                  bottomRight: Radius.circular(150.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFD81E5B),
                    Color(0xFF23395B),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 115.0,
                left: MediaQuery.of(context).size.width / 3,
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.nicepng.com/png/detail/340-3400291_smiling-person-png-man-with-arms-crossed-png.png"),
                backgroundColor: Colors.white,
                radius: 65.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 250.0,
                right: 10.0,
                left: 10.0,
              ),
              child: Column(
                children: [
                  TextField(
                    controller: usernameTxt,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      // labelText: "Username",
                      hintText: "Username",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: passwordTxt,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.orange,
                      ),
                      // labelText: "Username",
                      hintText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextField(
                    controller: phoneNumberTxt,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                      // labelText: "Username",
                      hintText: "PhoneNumber",
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("$usernameTxt+$passwordTxt+$phoneNumberTxt");
                    },
                    child: Container(
                      width: 180.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFD81E5B),
                            Color(0xFF23395B),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
