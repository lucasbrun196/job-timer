import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user) { //ouve se teve alteração no login
      if(user == null){ //se o usuario não estiver logado, vai para login
        Modular.to.navigate('/login');
      }
      else{ //se não vai para home
        Modular.to.navigate('/home');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0092d9),
              Color(0xff0167b2),
            ],
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/timer.png'),
        ),
      ),
    );
  }
}
