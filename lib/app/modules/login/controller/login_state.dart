part of 'login_controller.dart';

enum LoginStatus { initial, loading, failure }

class LoginState extends Equatable {
  final LoginStatus status; //momento em que o estado esta
  final String? errorMessage; //mensagem de erro, pode ser nula, pois somente no momento de erro aparece

  const LoginState._({
    required this.status,
    this.errorMessage,
  });

  const LoginState.initial() : this._(status: LoginStatus.initial);
  
  @override
  List<Object?> get props => [status, errorMessage]; //identifica como a classe mudou

  LoginState copyWith({
    LoginStatus? status,
    String? errorMessage,
  }){
    return LoginState._(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage 
    );
  }


}