import 'package:flutter/material.dart';
import 'package:posyandhu/presebtation/pages/entries/splashtwo.dart';
import 'package:posyandhu/presebtation/widget/theme.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Splashtwo(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        body: Center(
          child: Text(
            'Posyandhu Angrek',
            style: mediumBlackTextStyle.copyWith(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
