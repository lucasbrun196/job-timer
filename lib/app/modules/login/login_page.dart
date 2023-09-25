import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_timer/app/modules/login/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {


    final screenSize = MediaQuery.of(context)
        .size; // responsividade / tamanho da tela do ususario


    return BlocListener<LoginController, LoginState>( //ouve o estado
      listenWhen: (previous, current) => previous.status != current.status,//so vai retornar oq esta abaixo se o status anterior for diferente do atual
      bloc: controller,
      listener: (BuildContext context, state) { 
        if(state.status == LoginStatus.failure){
          final message = state.errorMessage?? 'failed to login';
          AsukaSnackbar.alert(message).show();
        }
       },
      child: Scaffold(
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
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255)),
                    onPressed: () {
                      controller.signIn();//quando clicado chama a função signIn()
                    },
                    child: Container(
                      child: Image.asset('assets/images/google_logo.png'),
                    ),
                  ),
                ),
                BlocSelector<LoginController, LoginState, bool>(
                    bloc: controller, //bloc que esta sendo escutado
                    selector: (state) => state.status == LoginStatus.loading, //retorna true/show se o estado for loading
                    builder: (context, show) {
                      return Visibility(
                        visible: show, //se for true ele mostra
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
