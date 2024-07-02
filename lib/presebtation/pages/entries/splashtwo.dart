import 'package:flutter/material.dart';
import 'package:posyandhu/presebtation/pages/entries/login.dart';
import 'package:posyandhu/presebtation/pages/entries/signup.dart';
import 'package:posyandhu/presebtation/widget/theme.dart';

class Splashtwo extends StatefulWidget {
  const Splashtwo({super.key});

  @override
  State<Splashtwo> createState() => _SplashtwoState();
}

class _SplashtwoState extends State<Splashtwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
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
                      Image.asset('assets/images/sp1.png'),
                    ]),
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu',
                      style: mediumBlackTextStyle.copyWith(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 18),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          elevation: 8,
                          shadowColor: Colors.black,
                          backgroundColor: Colors.purple,
                          minimumSize: const Size.fromHeight(45)),
                      child: Text("Masuk",
                          textAlign: TextAlign.center,
                          style: mediumWhiteTextStyle.copyWith(fontSize: 18)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Apakah kamu sudah memiliki akun ReproEd?",
                            textAlign: TextAlign.center,
                            style: regularBlackTextStyle.copyWith(fontSize: 8)),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: Text("Daftar",
                              textAlign: TextAlign.center,
                              style:
                                  regularPURPLETextStyle.copyWith(fontSize: 8)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
