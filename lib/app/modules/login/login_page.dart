import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context)
        .size; // responsividade / tamanho da tela do ususario
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/timer.png'),
              SizedBox(
                height: screenSize.height *
                    0.2, // distancia de uma imagem ate a outra / tamanho da tela x 20%
              ),
              SizedBox(
                width: screenSize.width * 0.8,
                height: 49,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255)

                  ),
                  onPressed: () {},
                  child: Container(
                    child: Image.asset('assets/images/google_logo.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
