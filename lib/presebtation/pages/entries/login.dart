import 'package:flutter/material.dart';
import 'package:posyandhu/presebtation/pages/entries/signup.dart';
import 'package:posyandhu/presebtation/pages/home.dart';
import 'package:posyandhu/presebtation/widget/theme.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: deepblueColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: semiboldwhitetext.copyWith(fontSize: 22),
                    ),
                    const SizedBox(height: 18),
                    Image.asset(
                      'assets/images/sp2.png',
                      height: 220,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                  right: 18,
                  left: 18,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: regularBlackTextStyle.copyWith(fontSize: 15),
                      ),
                      const SizedBox(height: 12),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Masukan email',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(Icons.person),
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),

                      //Jarak antar email dengan password
                      const SizedBox(height: 15),

                      Text(
                        "Password",
                        textAlign: TextAlign.left,
                        style: regularBlackTextStyle.copyWith(fontSize: 15),
                      ),
                      const SizedBox(height: 12),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Masukan password',
                            filled: false,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(Icons.lock_outlined),
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          obscureText: _obscureText,
                        ),
                      ),

                      const SizedBox(height: 35),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            elevation: 8,
                            shadowColor: Colors.black,
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(45)),
                        child: Text(
                          "Masuk",
                          textAlign: TextAlign.center,
                          style: semiboldBlackTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Apakah kamu sudah memiliki akun ExporCargo?",
                            textAlign: TextAlign.center,
                            style: regularBlackTextStyle.copyWith(fontSize: 10),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: Text(
                              "Daftar",
                              textAlign: TextAlign.center,
                              style:
                                  regularPURPLETextStyle.copyWith(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
